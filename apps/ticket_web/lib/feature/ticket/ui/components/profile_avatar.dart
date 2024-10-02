
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ticket_web/feature/ticket/ui/components/profile_avatar_choice_dialog.dart';

class ProfileAvatar extends HookWidget {
  const ProfileAvatar({
    required this.avatarImageUri,
    super.key,
    this.size = 100,
  });

  final Uri avatarImageUri;

  final double size;

  @override
  Widget build(BuildContext context) {
    final image = Image.network(
      avatarImageUri.toString(),
      fit: BoxFit.cover,
      width: size,
      height: size,
    );

    final isHover = useState(false);

    // カーソルが乗ったときは、編集アイコンを出す
    return MouseRegion(
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
                        avatarImageUri: avatarImageUri,
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
    );
  }
}
