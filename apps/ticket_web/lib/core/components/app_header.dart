import 'package:flutter/material.dart';
import 'package:ticket_web/core/extension/is_mobile.dart';
import 'package:ticket_web/gen/fonts.gen.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  const AppHeader({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.sizeOf(context).isMobile;

    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: false,
      title: AnimatedSwitcher(
        layoutBuilder: (currentChild, previousChildren) => Stack(
          alignment: Alignment.centerLeft,
          children: [
            ...previousChildren,
            if (currentChild != null) currentChild,
          ],
        ),
        duration: const Duration(milliseconds: 200),
        child: isMobile
            ? const KeyedSubtree(
                key: ValueKey('header-logo'),
                child: _HeaderLogo(),
              )
            : const KeyedSubtree(
                key: ValueKey('header-title'),
                child: _HeaderTitle(
                  onTap: null,
                ),
              ),
      ),
    );
  }
}

class _HeaderTitle extends StatelessWidget {
  const _HeaderTitle({
    required this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    final theme = Theme.of(context);

    return Material(
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            const _HeaderLogo(),
            const SizedBox(
              width: 8,
            ),
            Text(
              '${i18n.flutterKaigi} ${i18n.year} ${i18n.ticketSite}',
              style: theme.textTheme.titleLarge?.copyWith(
                fontFamily: FontFamily.poppins,
                fontFamilyFallback: [FontFamily.notoSansJP],
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _HeaderLogo extends StatelessWidget {
  const _HeaderLogo();

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/icon.webp',
      height: 36,
      width: 36,
    );
  }
}
