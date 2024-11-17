import 'package:common_data/profile.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_reader/core/provider/image_picker_provider.dart';
import 'package:ticket_reader/features/auth/data/auth_notifier.dart';

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
    ref.invalidateSelf();
  }

  Future<(Uint8List, String)> pickImage() async {
    final imagePicker = ref.read(imagePickerProvider);

    final image = await imagePicker.pickImage(
      source: ImageSource.gallery,
    );
    if (image == null) {
      throw ProfileAvatarException(
        message: 'Error: image is null',
      );
    }
    final bytes = await image.readAsBytes();
    final mimeType = image.mimeType ?? "image/${image.path.split('.').last}";
    return switch (mimeType) {
      'image/png' || 'image/jpg' || 'image/jpeg' => (bytes, mimeType),
      _ => throw ProfileAvatarException(
          message: 'Unsupported image type: $mimeType',
          showMessage: true,
        ),
    };
  }

  Future<void> deleteProfileAvatar() async {
    final profileRepository = ref.read(profileRepositoryProvider);
    final avatarName = state.value?.avatarName;
    if (avatarName == null) {
      return;
    }
    await profileRepository.deleteProfileAvatar(
      ref.read(authNotifierProvider)!.id,
      avatarName,
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

  Future<void> updateProfileIsPublished({required bool isPublished}) async {
    final profileRepository = ref.read(profileRepositoryProvider);
    await profileRepository.updateProfile(
      userId: ref.read(authNotifierProvider)!.id,
      isPublished: isPublished,
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
  ProfileAvatarException({
    required this.message,
    this.showMessage = false,
  });

  final String message;
  final bool showMessage;
}
