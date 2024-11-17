import 'dart:typed_data';

import 'package:common_data/session.dart';
import 'package:common_data/src/model/profile.dart';
import 'package:common_data/src/model/view/profile_with_sns.dart';
import 'package:common_data/src/model/view/profile_with_tickets_and_entry_log.dart';
import 'package:common_data/supabase_client.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:uuid/uuid.dart';

part 'profile_repository.g.dart';

@Riverpod(keepAlive: true)
ProfileRepository profileRepository(Ref ref) => ProfileRepository(
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
    return toProfile(response);
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
    return toProfileWithSns(response);
  }

  /// 個人スポンサーのプロフィールとそれに紐づくSNSアカウントを取得します
  Future<List<ProfileWithSns>> fetchProfilesForIndividualSponsor() async {
    final response = await _client
        .from('profiles_with_sns_for_individual_sponsor')
        .select()
        .withConverter(
          (data) => data.map(ProfileWithSnsView.fromJson).toList(),
        );
    return response.map(toProfileWithSns).toList();
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
      data: result.data.map(toProfile).toList(),
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
      data: result.data.map(toProfileWithSns).toList(),
      totalCount: result.count,
    );
  }

  /// プロフィールとそれに紐づくチケットと入場履歴を取得します
  Future<PagingResult<List<ProfileWithTicketsAndEntryLog>>>
      fetchProfilesWithTicketsAndEntryLogs({
    int limit = 10,
    int offset = 0,
  }) async {
    final result = await _client
        .from('profile_with_tickets_and_entry_log')
        .select()
        .range(offset, offset + limit)
        .count(CountOption.exact)
        .withConverter(
          (e) => e.map(ProfileWithTicketsAndEntryLogView.fromJson).toList(),
        );
    return PagingResult(
      totalCount: result.count,
      data: result.data
          .map(
            (e) => ProfileWithTicketsAndEntryLog(
              profile: toProfile(e.profile),
              ticket: e.ticket,
              entryLog: e.entryLog,
            ),
          )
          .toList(),
    );
  }

  /// プロフィールを更新します
  /// [userId] はユーザーID
  /// [name] は名前
  /// [comment] はコメント
  /// [isAdult] は成人しているかどうか
  /// [isPublished] は公開するかどうか
  /// [name], [comment], [isAdult], [isPublished] のいずれかはNullではない必要があります
  /// Nullの場合は更新されません
  /// 明示的に空で更新したい場合は空文字を指定してください
  Future<Profile> updateProfile({
    required String userId,
    String? name,
    String? comment,
    bool? isAdult,
    bool? isPublished,
  }) async {
    assert(
      name != null || comment != null || isAdult != null || isPublished != null,
      'name, comment, isAdult, isPublished must not be null at the same time',
    );
    final result = await _client
        .from('profiles')
        .update({
          if (name != null) 'name': name,
          if (comment != null) 'comment': comment,
          if (isAdult != null) 'is_adult': isAdult,
          if (isPublished != null) 'is_published': isPublished,
        })
        .eq('id', userId)
        .select()
        .single()
        .withConverter(
          ProfileTable.fromJson,
        );
    return toProfile(result);
  }

  /// プロフィールのSNSアカウントを全て更新します
  /// [userId] はユーザーID
  /// [snsAccounts] はSNSアカウントのリスト
  /// 既存のSNSアカウント登録を全て削除し、[snsAccounts]を登録します
  Future<void> updateSnsAccounts({
    required String userId,
    required List<(SnsType, String)> snsAccounts,
  }) async =>
      _client.rpc<void>(
        'replace_sns_accounts',
        params: {
          'user_id': userId,
          'sns_accounts': snsAccounts
              .map((e) => {'type': e.$1.name, 'value': e.$2})
              .toList(),
        },
      );

  /// プロフィールのアバターを更新する
  /// [avatarData] はバイナリデータ(Uint8List)
  /// [mimeType] はファイルのMIMEタイプ
  /// [userId] はユーザーID
  /// アバターのファイル名は [userId]/avatar となる
  Future<Profile> updateProfileAvatar({
    required Uint8List avatarData,
    required String mimeType,
    required String userId,
    String? currentAvatarName,
  }) async {
    assert(
      mimeType == 'image/png' ||
          mimeType == 'image/jpg' ||
          mimeType == 'image/jpeg',
      'fileExtension must be png, jpg, or jpeg',
    );

    if (currentAvatarName != null) {
      await _client.storage.from('profile_avatars').remove([
        '$userId/$currentAvatarName',
      ]);
    }

    // バイナリのアップロード
    final suffix = const Uuid().v4();
    final path = '$userId/$suffix';
    await _client.storage.from('profile_avatars').uploadBinary(
          path,
          avatarData,
          fileOptions: FileOptions(
            contentType: mimeType,
            upsert: true,
            cacheControl: '0',
          ),
        );

    // データの更新
    final result = await _client
        .from('profiles')
        .update({
          'avatar_name': suffix,
        })
        .eq('id', userId)
        .select()
        .single()
        .withConverter(ProfileTable.fromJson);
    return toProfile(result);
  }

  Future<void> deleteProfileAvatar(String userId, String avatarName) async {
    await _client.storage.from('profile_avatars').remove([
      '$userId/$avatarName',
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

  /// プロフィールのアバターのバイナリデータを取得する関数を返す
  /// [userId] はユーザーID
  /// ファイルが存在しない場合は`null`を返す
  Future<Uint8List?> _getProfileAvatarFetch(String userId, String avatarName) {
    return _client.storage
        .from('profile_avatars')
        .download('$userId/$avatarName');
  }

  Profile toProfile(ProfileTable profileTable) => Profile(
        id: profileTable.id,
        name: profileTable.name,
        role: profileTable.role,
        comment: profileTable.comment,
        createdAt: profileTable.createdAt,
        googleAvatarUri: profileTable.avatarUrl,
        userAvatarFetch: profileTable.avatarName != null
            ? () async => _getProfileAvatarFetch(
                  profileTable.id,
                  profileTable.avatarName!,
                )
            : null,
        isAdult: profileTable.isAdult,
        avatarName: profileTable.avatarName,
        isPublished: profileTable.isPublished,
      );

  ProfileWithSns toProfileWithSns(ProfileWithSnsView profileWithSnsView) =>
      ProfileWithSns(
        id: profileWithSnsView.id,
        name: profileWithSnsView.name,
        role: profileWithSnsView.role,
        comment: profileWithSnsView.comment,
        createdAt: profileWithSnsView.createdAt,
        googleAvatarUri: profileWithSnsView.avatarUrl,
        userAvatarFetch: profileWithSnsView.avatarName != null
            ? () async => _getProfileAvatarFetch(
                  profileWithSnsView.id,
                  profileWithSnsView.avatarName!,
                )
            : null,
        isAdult: profileWithSnsView.isAdult,
        snsAccounts: profileWithSnsView.snsAccounts,
        avatarName: profileWithSnsView.avatarName,
        isPublished: profileWithSnsView.isPublished,
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
