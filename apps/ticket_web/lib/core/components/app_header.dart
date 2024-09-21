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
      title: isMobile
          ? null
          : const _HeaderLogo(
              onTap: null,
            ),
    );
  }
}

class _HeaderLogo extends StatelessWidget {
  const _HeaderLogo({
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
            Image.asset(
              'assets/images/icon.webp',
              height: 36,
              width: 36,
            ),
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
