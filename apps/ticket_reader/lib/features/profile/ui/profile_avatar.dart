import 'package:common_data/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileAvatar extends HookConsumerWidget {
  const ProfileAvatar({
    required this.profile,
    super.key,
    this.size = 100,
  });

  factory ProfileAvatar.profileWithSns({
    required ProfileWithSns profile,
    double size = 100,
  }) =>
      ProfileAvatar(
        profile: Profile(
          id: profile.id,
          name: profile.name,
          role: profile.role,
          comment: profile.comment,
          createdAt: profile.createdAt,
          isAdult: profile.isAdult,
          isPublished: profile.isPublished,
        ),
        size: size,
      );

  final Profile profile;

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

    final googleAvatarUri = profile.googleAvatarUri?.toString();
    final googleAvatar = googleAvatarUri != null
        ? Image.network(
            googleAvatarUri,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => errorAvatar,
          )
        : errorAvatar;

    final userAvatarFetch = profile.userAvatarFetch;
    final Widget child;
    if (userAvatarFetch == null) {
      child = googleAvatar;
    } else {
      // ignore: discarded_futures
      final userAvatarFuture = useMemoized(userAvatarFetch, [profile]);
      final userAvatarState = useFuture(userAvatarFuture);
      child = switch (userAvatarState.connectionState) {
        ConnectionState.none ||
        ConnectionState.waiting ||
        ConnectionState.active =>
          const CircularProgressIndicator.adaptive(),
        ConnectionState.done => userAvatarState.data != null
            ? Image.memory(
                userAvatarState.data!,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => errorAvatar,
              )
            : googleAvatar,
      };
    }

    return SizedBox(
      width: size,
      height: size,
      child: ClipOval(child: child),
    );
  }
}
