import 'package:flutter/material.dart';
import 'package:ticket_web/core/extension/is_mobile.dart';
import 'package:ticket_web/gen/fonts.gen.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class SiteHeader extends StatelessWidget implements PreferredSizeWidget {
  const SiteHeader({
    this.onHeaderTitleTap,
    super.key,
  });

  final VoidCallback? onHeaderTitleTap;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.sizeOf(context).isMobile;

    return AppBar(
      backgroundColor: Colors.transparent,
      forceMaterialTransparency: true,
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
            ? KeyedSubtree(
                key: const ValueKey('header-logo'),
                child: _HeaderLogo(
                  onPressed: onHeaderTitleTap,
                ),
              )
            : KeyedSubtree(
                key: const ValueKey('header-title'),
                child: _HeaderTitle(
                  onPressed: onHeaderTitleTap,
                ),
              ),
      ),
    );
  }
}

class _HeaderTitle extends StatelessWidget {
  const _HeaderTitle({
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    final theme = Theme.of(context);

    return TextButton.icon(
      icon: const _HeaderLogo(),
      onPressed: onPressed,
      label: Text(
        '${i18n.flutterKaigi} ${i18n.year} ${i18n.ticketSite}',
        style: theme.textTheme.titleLarge?.copyWith(
          fontFamily: FontFamily.poppins,
          fontFamilyFallback: [FontFamily.notoSansJP],
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
    );
  }
}

class _HeaderLogo extends StatelessWidget {
  const _HeaderLogo({
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Image.asset(
        'assets/images/icon.webp',
        height: 36,
        width: 36,
      ),
    );
  }
}
