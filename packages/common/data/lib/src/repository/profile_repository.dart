import 'dart:typed_data';

import 'package:common_data/session.dart';
import 'package:common_data/src/model/profile.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ProfileRepository {
  ProfileRepository({
    required SupabaseClient client,
  }) : _client = client;

  final SupabaseClient _client;

  Future<Profile?> fetchProfileByUserId(String userId) async => _client
      .from('profiles')
      .select()
      .eq('id', userId)
      .maybeSingle()
      .withConverter((e) => e != null ? Profile.fromJson(e) : null);

  Future<ProfileWithSns?> fetchProfileWithSnsByUserId(String userId) async =>
      _client
          .from('profiles')
          .select()
          .eq('id', userId)
          .maybeSingle()
          .withConverter((e) => e != null ? ProfileWithSns.fromJson(e) : null);

  Future<PagingResult<List<Profile>>> fetchProfiles({
    int limit = 10,
    int offset = 0,
  }) async {
    final result = await _client
        .from('profiles')
        .select()
        .range(offset, offset + limit)
        .count(CountOption.exact)
        .withConverter((e) => e.map(Profile.fromJson).toList());

    return PagingResult(
      data: result.data,
      totalCount: result.count,
    );
  }

  Future<PagingResult<List<ProfileWithSns>>> fetchProfilesWithSns({
    int limit = 10,
    int offset = 0,
  }) async {
    final result = await _client
        .from('profiles')
        .select()
        .range(offset, offset + limit)
        .count(CountOption.exact)
        .withConverter((e) => e.map(ProfileWithSns.fromJson).toList());

    return PagingResult(
      data: result.data,
      totalCount: result.count,
    );
  }

  Future<Profile> updateProfile({
    required String userId,
    String? name,
    String? comment,
  }) async {
    assert(
      name != null || comment != null,
      'name or comment must be provided',
    );
    return _client
        .from('profiles')
        .update({
          if (name != null) 'name': name,
          if (comment != null) 'comment': comment,
        })
        .eq('id', userId)
        .select()
        .single()
        .withConverter(
          Profile.fromJson,
        );
  }

  Future<void> updateProfileWithSns({
    required String userId,
    String? name,
    String? comment,
    List<ProfileSocialNetworkingService>? snsAccounts,
  }) async {
    assert(
      name != null || comment != null || snsAccounts != null,
      'name or comment or snsAccounts must be provided',
    );
    if (name != null || comment != null) {
      await updateProfile(userId: userId, name: name, comment: comment);
    }
    if (snsAccounts != null) {
      await updateSnsAccounts(userId: userId, snsAccounts: snsAccounts);
    }
  }

  Future<void> updateSnsAccounts({
    required String userId,
    required List<ProfileSocialNetworkingService> snsAccounts,
  }) async =>
      _client.rpc<void>(
        'update_sns_accounts',
        params: {
          'user_id': userId,
          'sns_accounts': snsAccounts
              .map((e) => {'type': e.type.name, 'value': e.id})
              .toList(),
        },
      );

  Future<Profile> updateProfileAvatar({
    required Uint8List avatarData,
    required String fileExtension,
    required String userId,
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
          ),
        );

    // データの更新
    return _client
        .from('profiles')
        .update({
          'avatar_name': path,
        })
        .eq('id', userId)
        .select()
        .single()
        .withConverter(Profile.fromJson);
  }

  String getProfileAvatarUrl(String userId) =>
      _client.storage.from('profile_avatars').getPublicUrl('$userId/avatar');
}

class PagingResult<T> {
  PagingResult({
    required this.data,
    required this.totalCount,
  });

  final T data;
  final int totalCount;
}
