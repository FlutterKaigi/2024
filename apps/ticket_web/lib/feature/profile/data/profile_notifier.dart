import 'dart:developer';
import 'dart:typed_data';

import 'package:common_data/profile.dart';
import 'package:file_picker/file_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_web/feature/auth/data/auth_notifier.dart';

part 'profile_notifier.g.dart';

@Riverpod(keepAlive: true)
class ProfileNotifier extends _$ProfileNotifier {
  @override
  Future<ProfileWithSns?> build() async {
    ref.listen(
      authNotifierProvider,
      (_, next) {
        if (next == null) {
          // ログアウトしたので、プロフィールをnullにする
          state = const AsyncData(null);
        } else {
          // ログインしたので、プロフィールを取得する
          ref.invalidateSelf();
        }
      },
    );

    final profileRepository = ref.watch(profileRepositoryProvider);
    return profileRepository.fetchMyProfileWithSns();
  }

  Future<void> updateProfileAvatar({
    required Uint8List avatarData,
    required String fileExtension,
  }) async {
    final profileRepository = ref.read(profileRepositoryProvider);
    await profileRepository.updateProfileAvatar(
      avatarData: avatarData,
      fileExtension: fileExtension,
      userId: ref.read(authNotifierProvider)!.id,
    );
  }

  Future<void> uploadProfileAvatarWithFilePicker() async {
    final pickedFile = await FilePicker.platform.pickFiles(
      allowedExtensions: ['png', 'jpg', 'jpeg'],
      type: FileType.image,
    );
    if (pickedFile == null) {
      return;
    }
    final file = pickedFile.files.single;
    final bytes = file.bytes;
    if (bytes == null) {
      log('Error: bytes is null');
      return;
    }

    final fileExtension = file.extension;
    if (fileExtension == null) {
      log('Error: file extension is null');
      return;
    }

    await updateProfileAvatar(
      avatarData: bytes,
      fileExtension: fileExtension,
    );
  }

  Future<void> deleteProfileAvatar() async {
    final profileRepository = ref.read(profileRepositoryProvider);
    await profileRepository.deleteProfileAvatar(
      ref.read(authNotifierProvider)!.id,
      state.valueOrNull!.userAvatarUri!.path.split('/').last,
    );
  }
}
