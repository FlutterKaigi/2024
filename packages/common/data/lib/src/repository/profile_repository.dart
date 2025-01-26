import 'dart:convert';
import 'dart:typed_data';

import 'package:common_data/session.dart';
import 'package:common_data/src/model/profile.dart';
import 'package:common_data/src/model/view/profile_with_sns.dart';
import 'package:common_data/src/model/view/profile_with_ticket_and_entry_log.dart';
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
    final json =
        jsonDecode(_jsonContentProfilesForIndividualSponsor) as List<dynamic>;
    final response = json
        .map((e) => ProfileWithSnsView.fromJson(e as Map<String, dynamic>))
        .toList();
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

  /// 特定の検索条件を用いてプロフィールとそれに紐づくチケットと入場履歴を取得します
  Future<ProfileWithTicketAndEntryLog?> fetchProfileWithTicketAndEntryLog({
    String? userId,
    String? ticketId,
  }) async {
    // どちらかは必須
    assert(
      userId != null || ticketId != null,
      'userId and ticketId must not be null at the same time',
    );

    final PostgrestFilterBuilder<ProfileWithTicketAndEntryLogView> query;
    if (userId != null) {
      query = _client.rpc<ProfileWithTicketAndEntryLogView>(
        'profile_with_ticket_and_entry_log_search_by_id',
        params: {'target_uid': userId},
      );
    } else {
      query = _client.rpc<ProfileWithTicketAndEntryLogView>(
        'profile_with_ticket_and_entry_log_search_by_ticket_id',
        params: {'ticket_id': ticketId},
      );
    }
    final result = await query.maybeSingle().withConverter(
          (r) =>
              r != null ? ProfileWithTicketAndEntryLogView.fromJson(r) : null,
        );
    if (result == null) {
      return null;
    }
    return ProfileWithTicketAndEntryLog(
      id: result.id,
      email: result.email,
      profile: toProfile(result.profile),
      ticket: result.ticket,
      entryLog: result.entryLog,
    );
  }

  /// プロフィールとそれに紐づくチケットと入場履歴を取得します
  Future<PagingResult<List<ProfileWithTicketAndEntryLog>>>
      fetchProfilesWithTicketAndEntryLog({
    required ProfileWithTicketAndEntryLogArgument argument,
    int limit = 10,
    int offset = 0,
  }) async {
    var query = _client
        .rpc<List<ProfileWithTicketAndEntryLogView>>(
          'profile_with_ticket_and_entry_log_search',
          params: argument.toJson(),
        )
        .select();
    final sortBy = argument.sortBy;
    final order = argument.sortOrder;
    query = query.order(
      sortBy.order,
      ascending: order == SortOrder.asc,
    );

    final result = await query
        .range(offset, offset + limit - 1)
        .count(CountOption.exact)
        .withConverter(
          (e) => e.map(ProfileWithTicketAndEntryLogView.fromJson).toList(),
        );
    return PagingResult(
      totalCount: result.count,
      data: result.data
          .map(
            (e) => ProfileWithTicketAndEntryLog(
              id: e.id,
              email: e.email,
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
class PagingResult<T extends List<Object>> {
  PagingResult({
    required this.data,
    required this.totalCount,
  });

  final T data;
  final int totalCount;

  bool get hasNext => data.length < totalCount;
}

const _jsonContentProfilesForIndividualSponsor =
    '''[{"id":"994513a4-f3f4-45a0-b362-22ebf28cf6b7","name":"Takashi Kawasaki","role":"user","comment":"Flutter用のPDF表示プラグインpdfrxなどを作っています","avatar_name":null,"created_at":"2024-10-07T06:11:05.786358+00:00","avatar_url":"https://lh3.googleusercontent.com/a/ACg8ocInc4iGti7gIWwX2f4yo1gi0Ky3jU7Ci-VLOHT8_SDeiuDHIt7d5g=s96-c","is_adult":true,"is_published":true,"sns_accounts":[{"id":"994513a4-f3f4-45a0-b362-22ebf28cf6b7","type":"x","value":"espresso3389"}]},{"id":"852a8c2c-eab0-4130-8aec-04a942e758ae","name":"ミノムシ","role":"user","comment":"対戦よろしくお願いします","avatar_name":null,"created_at":"2024-10-07T08:23:57.322878+00:00","avatar_url":"https://lh3.googleusercontent.com/a/ACg8ocJa5BdC3dr2jlQIwfJaKZEvfDXsTzJ8ydVXMHRXV79lkhBLenR9=s96-c","is_adult":true,"is_published":true,"sns_accounts":[{"id":"852a8c2c-eab0-4130-8aec-04a942e758ae","type":"x","value":"minomusi_study"}]},{"id":"62b63436-2dba-4d05-b686-457abe591105","name":"Satoru Fujimori","role":"user","comment":"I want to be able to create cool apps!","avatar_name":null,"created_at":"2024-10-08T04:07:40.243749+00:00","avatar_url":"https://lh3.googleusercontent.com/a/ACg8ocJIwTUUh6Y6Rl-rweZe87f6KVWaGgJl7mpUAW7GZzvoEOiBNZz0=s96-c","is_adult":true,"is_published":true,"sns_accounts":[{"id":"62b63436-2dba-4d05-b686-457abe591105","type":"x","value":"masatoru"}]},{"id":"d6b7274e-fb24-4292-ac2e-1ba61273b4da","name":"blendthink","role":"admin","comment":"好きな Widget は Baseline","avatar_name":"00f88d8c-f90d-4051-87fb-8cf2eb667809","created_at":"2024-10-07T01:29:27.912796+00:00","avatar_url":null,"is_adult":true,"is_published":true,"sns_accounts":[{"id":"d6b7274e-fb24-4292-ac2e-1ba61273b4da","type":"x","value":"blendthink"}]},{"id":"4569c857-97c5-42bc-b048-c7a83e6dccae","name":"jiyuujin","role":"user","comment":"お気持ちで課金させていただき","avatar_name":null,"created_at":"2024-10-08T13:49:20.003255+00:00","avatar_url":"https://lh3.googleusercontent.com/a/ACg8ocIwo3fBJmi1LVcg4WHhpVvbkpsGsoyARhE4gmiShXzWfksNMCE=s96-c","is_adult":true,"is_published":true,"sns_accounts":[]},{"id":"3bdb6e46-c91f-4791-9d8e-48a7136cae00","name":"KAWASHIMA Yoshiyuki","role":"user","comment":"","avatar_name":null,"created_at":"2024-10-10T20:56:42.030093+00:00","avatar_url":"https://lh3.googleusercontent.com/a/ACg8ocJMCwemsgdeIf_QTxoMtNcLbYFDmkTnZmMYV2L3ieXzu-xEVrXP=s96-c","is_adult":true,"is_published":true,"sns_accounts":[{"id":"3bdb6e46-c91f-4791-9d8e-48a7136cae00","type":"x","value":"ykws__"}]},{"id":"1363da8d-f963-4310-848e-a94b46e4f5d1","name":"JaiChang Park","role":"user","comment":"凡人","avatar_name":null,"created_at":"2024-10-12T14:17:02.643984+00:00","avatar_url":"https://lh3.googleusercontent.com/a/ACg8ocI2YfSHXPKq5QYWSsNsUIDYnfYa0nVb_k9ZHTtoEFKzskWhNNFDrA=s96-c","is_adult":true,"is_published":true,"sns_accounts":[{"id":"1363da8d-f963-4310-848e-a94b46e4f5d1","type":"x","value":"jaichangpark"}]},{"id":"54a71fc1-94df-410c-81dc-3a285c6d1170","name":"さだもとかつゆき / greendrop","role":"user","comment":"個人でFlutterを利用して開発してます","avatar_name":"a7983f52-818e-4d3e-8c62-61883196d8d8","created_at":"2024-10-18T02:28:58.430874+00:00","avatar_url":"https://lh3.googleusercontent.com/a/ACg8ocJeY8upp22U6rvhdVGq8qexjjrD1ntDhaZ1Dfg4Prjq9y_II5Ravg=s96-c","is_adult":true,"is_published":true,"sns_accounts":[{"id":"54a71fc1-94df-410c-81dc-3a285c6d1170","type":"x","value":"greendrop269"}]},{"id":"61407e55-2fed-4ae3-b6b6-5a8ca09edfe7","name":"Teruaki Kinoshita","role":"user","comment":"Flutterを盛り上げていきましょう!!","avatar_name":"13fdef12-5e96-4096-8d05-d0a6c1604ede","created_at":"2024-10-24T01:39:30.544762+00:00","avatar_url":"https://lh3.googleusercontent.com/a/ACg8ocKTPNJtWxF4otELGFQlkm0oRks7EG8I3iCxatafRXY46wyBkTs=s96-c","is_adult":true,"is_published":true,"sns_accounts":[{"id":"61407e55-2fed-4ae3-b6b6-5a8ca09edfe7","type":"x","value":"metal_president"}]},{"id":"bfdafb5f-caad-43b9-9b68-e711d3e3227a","name":"akihiro suda","role":"user","comment":"","avatar_name":"1160fa38-d351-4183-873a-ea9039afb269.png","created_at":"2024-11-06T04:44:57.804139+00:00","avatar_url":"https://lh3.googleusercontent.com/a/ACg8ocJcJTnEozziK_UkmViPP632GdfHfrcV03AviYsgygjKIj_43Xut=s96-c","is_adult":true,"is_published":true,"sns_accounts":[]},{"id":"f5373e8d-eb88-4e05-8455-54bf2f68bd76","name":"ふくた","role":"user","comment":"よろしくお願いします！","avatar_name":null,"created_at":"2024-10-23T04:46:04.989245+00:00","avatar_url":"https://lh3.googleusercontent.com/a/ACg8ocIymNRnrE5x2_RYyb8AgX0nw48MiJUEANcjMrehWmMxDXdAcdnkcA=s96-c","is_adult":true,"is_published":true,"sns_accounts":[]},{"id":"b5c2ac2a-f0e7-4e20-8969-0663b5afb420","name":"Toru Hayazaki","role":"user","comment":"Flutter初心者です！","avatar_name":null,"created_at":"2024-10-23T04:59:26.710975+00:00","avatar_url":"https://lh3.googleusercontent.com/a/ACg8ocLbCxRxeNeX5HRv143HEscKlhtkGoV0ZzGWfbmuEsH0lQvAsw=s96-c","is_adult":true,"is_published":true,"sns_accounts":[{"id":"b5c2ac2a-f0e7-4e20-8969-0663b5afb420","type":"x","value":"zakihaya"}]},{"id":"613ed1af-a569-4fef-bec4-a5f31eaf7c60","name":"Yuichi Yagami","role":"user","comment":"Flutter界隈を盛り上げて行きましょう！","avatar_name":"c37d4789-6393-49dd-a426-f50abc776388","created_at":"2024-11-13T04:47:31.276875+00:00","avatar_url":"https://lh3.googleusercontent.com/a/ACg8ocJzADnyRp1Fmy0k_i1zvDLIMaceiy1ZJitHNUpumHqr9_lXX3qY=s96-c","is_adult":true,"is_published":true,"sns_accounts":[{"id":"613ed1af-a569-4fef-bec4-a5f31eaf7c60","type":"x","value":"lunaxxsacredxx"}]},{"id":"03f9d4d6-a0c3-4cf0-955f-a91f73718a06","name":"mhidaka","role":"user","comment":"","avatar_name":"mhidaka.png","created_at":"2024-11-17T10:33:27.449169+00:00","avatar_url":"https://lh3.googleusercontent.com/a/ACg8ocLI7AUFlUBd2hjKg7SSbYwXZbq4gDsx-g0FkLcuU2Qebhwi7QI=s96-c","is_adult":true,"is_published":true,"sns_accounts":[{"id":"03f9d4d6-a0c3-4cf0-955f-a91f73718a06","type":"x","value":"mhidaka"}]}]''';
