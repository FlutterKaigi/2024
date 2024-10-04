import 'dart:typed_data';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_web/feature/profile/data/profile_notifier.dart';

part 'user_avatar_image_provider.g.dart';

@Riverpod(keepAlive: true)
Future<Uint8List?> userAvatarImage(UserAvatarImageRef ref) async {
  final profile = ref.watch(profileNotifierProvider);
  return switch (profile) {
    AsyncData(:final value) when value?.userAvatarFetch != null =>
      value!.userAvatarFetch!.call(),
    _ => null,
  };
}
