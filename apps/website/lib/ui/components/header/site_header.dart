import 'package:conference_2024_website/core/util/scroll_to_section.dart';
import 'package:conference_2024_website/gen/i18n/strings.g.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

final class SiteHeader extends StatelessWidget implements PreferredSizeWidget {
  const SiteHeader({
    required this.onTitleTap,
    super.key,
    this.showAppBar = false,
  });

  final VoidCallback onTitleTap;
  final bool showAppBar;

  static const double appbarHeight = 66;

  @override
  Size get preferredSize => const Size.fromHeight(appbarHeight);

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.sizeOf(context).width < 960;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      height: isMobile || showAppBar ? appbarHeight : 0,
      child: AppBar(
        backgroundColor:
            isMobile ? Colors.transparent : Colors.white.withValues(alpha: 0.8),
        toolbarHeight: appbarHeight,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: isMobile
            ? null
            : _HeaderBody(
                onTitleTap: onTitleTap,
              ),
        actions: [
          if (isMobile) const _DrawerButton(),
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
        ObjectFlagProperty<VoidCallback>.has('onTitleTap', onTitleTap),
      )
      ..add(
        DiagnosticsProperty<bool>('showAppBar', showAppBar),
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

final class _HeaderBody extends StatelessWidget {
  const _HeaderBody({required this.onTitleTap});
  final VoidCallback onTitleTap;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Container(
      width: size.width,
      height: 66,
      padding: const EdgeInsets.symmetric(horizontal: 160),
      alignment: Alignment.center,
      child: Row(
        children: [
          _HeaderLogo(onTitleTap: onTitleTap),
          const Spacer(),
          const _HeaderNavigation(),
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
      ObjectFlagProperty<VoidCallback>.has('onTitleTap', onTitleTap),
    );
  }
}

final class _HeaderLogo extends StatelessWidget {
  const _HeaderLogo({required this.onTitleTap});
  final VoidCallback onTitleTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;
    final i18n = Translations.of(context);

    return Material(
      color: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: InkWell(
        onTap: onTitleTap,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        child: Row(
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
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
      ObjectFlagProperty<VoidCallback>.has('onTitleTap', onTitleTap),
    );
  }
}

final class _HeaderNavigation extends StatelessWidget {
  const _HeaderNavigation();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;
    final i18n = Translations.of(context);
    final naviItemDataList = <NaviItemButtonData>[
      NaviItemButtonData(
        title: i18n.header.speakerWanted,
        key: NaviSectionKey.speakerWanted.key,
      ),

      /// 未実装のセクションはコメントアウト
      // NaviItemButtonData(
      //   title: i18n.header.sponsor,
      //   key: NaviSectionKey.sponsor.key,
      // ),
      // NaviItemButtonData(
      //   title: i18n.header.staff,
      //   key: NaviSectionKey.staff.key,
      // ),
    ];

    return Row(
      children: naviItemDataList
          .map(
            (data) => _naviItem(
              onPressed: () async => scrollToSection(data.key, context),
              text: data.title,
              textTheme: textTheme,
            ),
          )
          .toList(),
    );
  }

  Widget _naviItem({
    required VoidCallback onPressed,
    required String text,
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

/// 各セクションへのジャンプするためのキー
enum NaviSectionKey {
  title(GlobalObjectKey('headerTitleKey')),
  speakerWanted(GlobalObjectKey('speakerWantedSectionKey')),
  sponsor(GlobalObjectKey('sponsorSectionKey')),
  staff(GlobalObjectKey('staffSectionKey')),
  ;

  const NaviSectionKey(this.key);
  final GlobalObjectKey key;
}

final class NaviItemButtonData {
  const NaviItemButtonData({
    required this.title,
    required this.key,
  });
  final String title;
  final GlobalObjectKey key;
}
