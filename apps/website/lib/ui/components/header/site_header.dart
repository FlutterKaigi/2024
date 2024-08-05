import 'package:conference_2024_website/i18n/strings.g.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/material.dart';

final class SiteHeader extends StatelessWidget implements PreferredSizeWidget {
  const SiteHeader({super.key});

  static const double appbarHeight = 66;

  @override
  Size get preferredSize => const Size.fromHeight(appbarHeight);

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.sizeOf(context).width < 960;

    return AppBar(
      backgroundColor: Colors.white.withOpacity(0.8),
      toolbarHeight: appbarHeight,
      elevation: 0,
      scrolledUnderElevation: 0,
      title: isMobile ? null : const _HeaderBody(),
      actions: [
        if (isMobile) const _DrawerButton(),
      ],
    );
  }
}

final class _DrawerButton extends StatelessWidget {
  const _DrawerButton();

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => IconButton(
        onPressed: () => Scaffold.of(context).openEndDrawer(),
        padding: const EdgeInsets.all(24),
        icon: const Icon(Icons.menu, size: 24),
      ),
    );
  }
}

class _HeaderBody extends StatelessWidget {
  const _HeaderBody();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Container(
      width: size.width,
      height: 66,
      padding: const EdgeInsets.symmetric(horizontal: 160),
      alignment: Alignment.center,
      child: const Row(
        children: [
          _HeaderLogo(),
          Spacer(),
          _HeaderNavigation(),
        ],
      ),
    );
  }
}

class _HeaderLogo extends StatelessWidget {
  const _HeaderLogo();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;
    final i18n = Translations.of(context);

    return Row(
      children: [
        Image.asset(
          'assets/images/icon.webp',
          height: 36,
          width: 36,
        ),
        const SizedBox(width: 10),
        Text(
          i18n.title,
          style: textTheme.availableFonts.poppins.bold.copyWith(
            fontSize: 24,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          i18n.year,
          style: textTheme.availableFonts.poppins.bold.copyWith(
            fontSize: 24,
          ),
        ),
      ],
    );
  }
}

class _HeaderNavigation extends StatelessWidget {
  const _HeaderNavigation();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;
    final i18n = Translations.of(context);

    return Row(
      children: [
        _naviItem(
          text: i18n.header.speakerWanted,
          onPressed: () {},
          textTheme: textTheme,
        ),
        const SizedBox(width: 16),
        _naviItem(
          text: i18n.header.sponsor,
          onPressed: () {},
          textTheme: textTheme,
        ),
        const SizedBox(width: 16),
        _naviItem(
          text: i18n.header.staff,
          onPressed: () {},
          textTheme: textTheme,
        ),
      ],
    );
  }

  Widget _naviItem({
    required String text,
    required VoidCallback onPressed,
    required TextThemeExtension textTheme,
  }) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: textTheme.availableFonts.poppins.regular.copyWith(
          fontSize: 16,
          color: Colors.black,
        ),
      ),
    );
  }
}
