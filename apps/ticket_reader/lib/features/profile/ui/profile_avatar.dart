import 'package:common_data/profile.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_reader/features/profile/data/user_avatar_image_provider.dart';

class ProfileAvatar extends HookConsumerWidget {
  const ProfileAvatar({
    required this.profile,
    this.canEdit = true,
    this.showEditIcon = true,
    super.key,
    this.size = 100,
  });

  final ProfileWithSns profile;
  final bool canEdit;
  final bool showEditIcon;

  final double size;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final errorAvatar = DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.7),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Icon(
          Icons.person,
          color: Colors.white,
          size: size - 16,
        ),
      ),
    );

    final googleAvatar = Image.network(
      profile.googleAvatarUri.toString(),
      fit: BoxFit.cover,
      width: size,
      height: size,
      errorBuilder: (context, error, stackTrace) => errorAvatar,
    );

    final userAvatarState = ref.watch(userAvatarImageProvider);

    final image = switch (userAvatarState) {
      AsyncData(:final value) when value != null => Image.memory(
          value,
          fit: BoxFit.cover,
          width: size,
          height: size,
          errorBuilder: (context, error, stackTrace) => errorAvatar,
        ),
      AsyncData() => googleAvatar,
      AsyncError() => errorAvatar,
      _ => const CircularProgressIndicator.adaptive(),
    };

    return ClipOval(child: image);
  }
}
