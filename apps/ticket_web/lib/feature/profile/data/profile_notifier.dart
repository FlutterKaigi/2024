import 'package:common_data/profile.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_web/core/provider/image_picker_provider.dart';
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
    required String mimeType,
  }) async {
    final profileRepository = ref.read(profileRepositoryProvider);
    await profileRepository.updateProfileAvatar(
      avatarData: avatarData,
      mimeType: mimeType,
      userId: ref.read(authNotifierProvider)!.id,
      currentAvatarName: state.value?.avatarName,
    );
  }

  Future<void> uploadProfileAvatarWithFilePicker() async {
    final imagePicker = ref.read(imagePickerProvider);
    final image = await imagePicker.pickImage(
      source: ImageSource.gallery,
    );

    if (image == null) {
      throw ProfileAvatarException('Error: image is null');
    }

    final bytes = await image.readAsBytes();
    final mimeType = image.mimeType ?? 'image/jpeg';

    await updateProfileAvatar(
      avatarData: bytes,
      mimeType: mimeType,
    );
    ref.invalidateSelf();
  }

  Future<void> deleteProfileAvatar() async {
    final profileRepository = ref.read(profileRepositoryProvider);
    await profileRepository.deleteProfileAvatar(
      ref.read(authNotifierProvider)!.id,
    );
    ref.invalidateSelf();
  }

  Future<void> updateProfileName(String name) async {
    final profileRepository = ref.read(profileRepositoryProvider);
    await profileRepository.updateProfile(
      userId: ref.read(authNotifierProvider)!.id,
      name: name,
    );
    ref.invalidateSelf();
  }

  Future<void> updateProfileDescription(String description) async {
    final profileRepository = ref.read(profileRepositoryProvider);
    await profileRepository.updateProfile(
      userId: ref.read(authNotifierProvider)!.id,
      comment: description,
    );
    ref.invalidateSelf();
  }

  Future<void> updateProfileIsAdult({required bool isAdult}) async {
    final profileRepository = ref.read(profileRepositoryProvider);
    await profileRepository.updateProfile(
      userId: ref.read(authNotifierProvider)!.id,
      isAdult: isAdult,
    );
    ref.invalidateSelf();
  }

  Future<void> updateSnsAccounts({
    required List<(SnsType, String)> snsAccounts,
  }) async {
    final respository = ref.read(profileRepositoryProvider);
    await respository.updateSnsAccounts(
      userId: ref.read(authNotifierProvider)!.id,
      snsAccounts: snsAccounts,
    );
    ref.invalidateSelf();
  }
}

class ProfileAvatarException implements Exception {
  ProfileAvatarException(this.message);
  final String message;
}
