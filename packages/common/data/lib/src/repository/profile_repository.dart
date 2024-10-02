import 'dart:typed_data';

import 'package:common_data/session.dart';
import 'package:common_data/src/model/profile.dart';
import 'package:common_data/src/model/view/profile_with_sns.dart';
import 'package:common_data/supabase_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'profile_repository.g.dart';

@Riverpod(keepAlive: true)
ProfileRepository profileRepository(ProfileRepositoryRef ref) =>
    ProfileRepository(
      client: ref.watch(supabaseClientProvider),
    );

class ProfileRepository {
  ProfileRepository({
    required SupabaseClient client,
  }) : _client = client;

  final SupabaseClient _client;

  /// プロフィールを取得します
  /// [userId] はユーザーID
  /// `role`が`admin`以外の場合は、自分のプロフィールしか取得できません
  /// 取得可能なプロフィールがない場合は`null`を返します
  Future<Profile?> fetchProfileByUserId(String userId) async {
    final response = await _client
        .from('profiles')
        .select()
        .eq('id', userId)
        .maybeSingle()
        .withConverter((e) => e != null ? ProfileTable.fromJson(e) : null);
    if (response == null) {
      return null;
    }
    return _toProfile(response);
  }

  /// プロフィールとそれに紐づくSNSアカウントを取得します
  /// [userId] はユーザーID
  /// `role`が`admin`以外の場合は、自分のプロフィールしか取得できません
  /// 取得可能なプロフィールがない場合は`null`を返します
  Future<ProfileWithSns?> fetchProfileWithSnsByUserId(String userId) async {
    final response = await _client
        .from('profiles_with_sns')
        .select()
        .eq('id', userId)
        .maybeSingle()
        .withConverter(
          (data) => data != null ? ProfileWithSnsView.fromJson(data) : null,
        );
    if (response == null) {
      return null;
    }
    return _toProfileWithSns(response);
  }

  /// 自分のプロフィールとそれに紐づくSNSアカウントを取得する
  /// ログインしていない場合は`null`を返す
  Future<ProfileWithSns?> fetchMyProfileWithSns() async {
    final user = _client.auth.currentUser;
    if (user == null) {
      return null;
    }
    return fetchProfileWithSnsByUserId(user.id);
  }

  /// プロフィールを取得します
  /// [limit] は取得する件数
  /// [offset] は取得する位置
  /// `role`が`admin`の場合は全てのプロフィールを取得できますが、
  /// それ以外の場合は自分のプロフィールしか取得できません
  Future<PagingResult<List<Profile>>> fetchProfiles({
    int limit = 10,
    int offset = 0,
  }) async {
    final result = await _client
        .from('profiles')
        .select()
        .range(offset, offset + limit)
        .count(CountOption.exact)
        .withConverter(
          (e) => e.map(ProfileTable.fromJson).toList(),
        );

    return PagingResult(
      data: result.data.map(_toProfile).toList(),
      totalCount: result.count,
    );
  }

  /// プロフィールとそれに紐づくSNSアカウントを全て取得します
  /// [limit] は取得する件数
  /// [offset] は取得する位置
  /// `role`が`admin`の場合は全てのプロフィールを取得できますが、
  /// それ以外の場合は自分のプロフィールしか取得できません
  Future<PagingResult<List<ProfileWithSns>>> fetchProfilesWithSns({
    int limit = 10,
    int offset = 0,
  }) async {
    final result = await _client
        .from('profiles')
        .select()
        .range(offset, offset + limit)
        .count(CountOption.exact)
        .withConverter((e) => e.map(ProfileWithSnsView.fromJson).toList());

    return PagingResult(
      data: result.data.map(_toProfileWithSns).toList(),
      totalCount: result.count,
    );
  }

  /// プロフィールを更新します
  /// [userId] はユーザーID
  /// [name] は名前
  /// [comment] はコメント
  /// [isAdult] は成人しているかどうか
  /// [name], [comment], [isAdult] のいずれかはNullではない必要があります
  /// Nullの場合は更新されません
  /// 明示的に空で更新したい場合は空文字を指定してください
  Future<Profile> updateProfile({
    required String userId,
    String? name,
    String? comment,
    bool? isAdult,
  }) async {
    assert(
      name != null || comment != null || isAdult != null,
      'name, comment, isAdult must not be null at the same time',
    );
    final result = await _client
        .from('profiles')
        .update({
          if (name != null) 'name': name,
          if (comment != null) 'comment': comment,
          if (isAdult != null) 'is_adult': isAdult,
        })
        .eq('id', userId)
        .select()
        .single()
        .withConverter(
          ProfileTable.fromJson,
        );
    return _toProfile(result);
  }

  /// プロフィールのSNSアカウントを全て更新します
  /// [userId] はユーザーID
  /// [snsAccounts] はSNSアカウントのリスト
  /// 既存のSNSアカウント登録を全て削除し、[snsAccounts]を登録します
  Future<void> updateSnsAccounts({
    required String userId,
    required List<ProfileSocialNetworkingService> snsAccounts,
  }) async =>
      _client.rpc<void>(
        'replace_sns_accounts',
        params: {
          'user_id': userId,
          'sns_accounts': snsAccounts
              .map((e) => {'type': e.type.name, 'value': e.id})
              .toList(),
        },
      );

  /// プロフィールのアバターを更新する
  /// [avatarData] はバイナリデータ(Uint8List)
  /// [fileExtension] はファイルの拡張子
  /// [userId] はユーザーID
  /// アバターのファイル名は [userId]/avatar となる
  Future<Profile> updateProfileAvatar({
    required Uint8List avatarData,
    required String fileExtension,
    required String userId,
    String? currentAvatarName,
  }) async {
    assert(
      fileExtension == 'png' ||
          fileExtension == 'jpg' ||
          fileExtension == 'jpeg',
      'fileExtension must be png, jpg, or jpeg',
    );
    // バイナリのアップロード
    final path = '$userId/avatar';
    await _client.storage.from('profile_avatars').uploadBinary(
          path,
          avatarData,
          fileOptions: FileOptions(
            contentType: 'image/$fileExtension',
            upsert: true,
            cacheControl: '0',
          ),
        );

    // データの更新
    final result = await _client
        .from('profiles')
        .update({
          'avatar_name': path,
        })
        .eq('id', userId)
        .select()
        .single()
        .withConverter(ProfileTable.fromJson);
    return _toProfile(result);
  }

  Future<void> deleteProfileAvatar(String userId, String fileName) async {
    await _client.storage.from('profile_avatars').remove([
      '$userId/$fileName',
    ]);

    await _client
        .from('profiles')
        .update({
          'avatar_name': null,
        })
        .eq('id', userId)
        .select()
        .single()
        .withConverter(ProfileTable.fromJson);
  }

  /// プロフィールのアバターのURLを取得します
  /// [userId] はユーザーID
  /// 当該ファイルが存在するかどうかは検証しないため、URLをFetchしても404が返ることがあります
  String _getProfileAvatarUrl(String userId) =>
      _client.storage.from('profile_avatars').getPublicUrl('$userId/avatar');

  Profile _toProfile(ProfileTable profileTable) => Profile(
        id: profileTable.id,
        name: profileTable.name,
        role: profileTable.role,
        comment: profileTable.comment,
        createdAt: profileTable.createdAt,
        googleAvatarUri: profileTable.avatarUrl,
        userAvatarUri: profileTable.avatarName != null
            ? Uri.parse(_getProfileAvatarUrl(profileTable.id)).replace(
                queryParameters: {
                  // キャッシュを無効にする
                  't': DateTime.now().millisecondsSinceEpoch.toString(),
                },
              )
            : null,
        isAdult: profileTable.isAdult,
      );

  ProfileWithSns _toProfileWithSns(ProfileWithSnsView profileWithSnsView) =>
      ProfileWithSns(
        id: profileWithSnsView.id,
        name: profileWithSnsView.name,
        role: profileWithSnsView.role,
        comment: profileWithSnsView.comment,
        createdAt: profileWithSnsView.createdAt,
        googleAvatarUri: profileWithSnsView.avatarUrl,
        userAvatarUri: profileWithSnsView.avatarName != null
            ? Uri.parse(_getProfileAvatarUrl(profileWithSnsView.id)).replace(
                queryParameters: {
                  // キャッシュを無効にする
                  't': DateTime.now().millisecondsSinceEpoch.toString(),
                },
              )
            : null,
        isAdult: profileWithSnsView.isAdult,
        snsAccounts: profileWithSnsView.snsAccounts,
      );
}

/// ページング用のクラス
/// [data] は取得したデータ
/// [totalCount] は全データ数
class PagingResult<T> {
  PagingResult({
    required this.data,
    required this.totalCount,
  });

  final T data;
  final int totalCount;
}
