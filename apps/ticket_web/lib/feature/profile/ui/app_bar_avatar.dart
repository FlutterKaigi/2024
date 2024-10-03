import 'package:common_data/sponsor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/core/extension/is_mobile.dart';
import 'package:ticket_web/feature/auth/data/auth_notifier.dart';
import 'package:ticket_web/feature/profile/data/profile_notifier.dart';
import 'package:ticket_web/feature/ticket/ui/components/profile_avatar.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class AppBarAvatar extends ConsumerWidget {
  const AppBarAvatar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileState = ref.watch(profileNotifierProvider);

    return switch (profileState) {
      AsyncData(:final value) when value != null => _Avatar(
          profile: value,
        ),
      AsyncData() => const _LoginButton(),
      AsyncError() => const SizedBox.shrink(),
      _ => const CircularProgressIndicator.adaptive(),
    };
  }
}

class _Avatar extends HookWidget {
  const _Avatar({
    required this.profile,
  });

  final ProfileWithSns profile;

  @override
  Widget build(BuildContext context) {
    final focusNode = useFocusNode();
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final controller = useMemoized(MenuController.new);

    return MenuAnchor(
      controller: controller,
      crossAxisUnconstrained: false,
      childFocusNode: focusNode,
      style: MenuStyle(
        backgroundColor: WidgetStateProperty.all(colorScheme.primaryContainer),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      menuChildren: [
        _MenuItem(
          onClose: controller.close,
          profile: profile,
        ),
      ],
      builder: (context, controller, child) => IconButton(
        padding: EdgeInsets.zero,
        onPressed: () => controller.open(),
        focusNode: focusNode,
        icon: ProfileAvatar(
          profile: profile,
          canEdit: false,
          size: kToolbarHeight * 0.7,
        ),
      ),
    );
  }
}

class _MenuItem extends ConsumerWidget {
  const _MenuItem({
    required this.onClose,
    required this.profile,
  });

  final void Function() onClose;
  final ProfileWithSns profile;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final i18n = Translations.of(context);
    final authState = ref.watch(authNotifierProvider);
    final isMobile = MediaQuery.sizeOf(context).isMobile;

    return MenuItemButton(
      child: DefaultTextStyle(
        style: TextStyle(
          color: colorScheme.onPrimaryContainer,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: onClose,
                  icon: const Icon(Icons.close),
                ),
              ),
              Center(
                child: ProfileAvatar(
                  profile: profile,
                  canEdit: false,
                  size: isMobile ? 64 : 72,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                i18n.authorization.alreadyLoggedInWithMailAddress(
                  mailAddress: authState?.email ?? '',
                ),
              ),
              const Divider(),
              TextButton.icon(
                icon: const Icon(Icons.logout),
                onPressed: () async =>
                    ref.read(authNotifierProvider.notifier).signOut(),
                label: Text(i18n.authorization.logOut),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginButton extends ConsumerWidget {
  const _LoginButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton.filled(
      onPressed: () async =>
          ref.read(authNotifierProvider.notifier).signInWithGoogle(),
      icon: const Icon(
        Icons.login,
        color: Colors.white,
      ),
    );
  }
}
