import 'dart:typed_data';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_reader/features/profile/data/profile_notifier.dart';

part 'user_avatar_image_provider.g.dart';

@Riverpod(keepAlive: true)
Future<Uint8List?> userAvatarImage(Ref ref) async {
  final profile = ref.watch(profileNotifierProvider);
  return switch (profile) {
    AsyncData(:final value) when value?.userAvatarFetch != null =>
      value!.userAvatarFetch!.call(),
    _ => null,
  };
}
