import 'package:common_data/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/feature/profile/data/user_avatar_image_provider.dart';
import 'package:ticket_web/feature/ticket/ui/components/profile_avatar_choice_dialog.dart';

class ProfileAvatar extends HookConsumerWidget {
  const ProfileAvatar({
    required this.profile,
    this.canEdit = true,
    super.key,
    this.size = 100,
  });

  final ProfileWithSns profile;
  final bool canEdit;

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

    final isHover = useState(false);

    // カーソルが乗ったときは、編集アイコンを出す
    return GestureDetector(
      onTap: () async => ProfileAvatarChoiceDialog.show(
        context: context,
        profile: profile,
      ),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => isHover.value = true,
        onExit: (_) => isHover.value = false,
        child: ClipOval(
          child: Stack(
            alignment: Alignment.center,
            children: [
              image,
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: isHover.value
                    ? GestureDetector(
                        onTap: () async => ProfileAvatarChoiceDialog.show(
                          context: context,
                          profile: profile,
                        ),
                        child: ColoredBox(
                          color: Colors.black.withValues(alpha: 0.5),
                          child: SizedBox(
                            width: size,
                            height: size,
                            child: const Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
