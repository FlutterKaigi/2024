import 'package:conference_2024_website/core/util/scroll_to_section.dart';
import 'package:conference_2024_website/gen/i18n/strings.g.dart';
import 'package:conference_2024_website/ui/components/header/site_header.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vector_graphics/vector_graphics.dart';

final class HamburgerMenu extends StatelessWidget {
  const HamburgerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final gradientTheme = theme.customThemeExtension.gradientTheme;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: gradientTheme.tertiary,
      ),
      child: Drawer(
        backgroundColor: Colors.white.withValues(alpha: 0.5),
        shape: const RoundedRectangleBorder(),
        child: const SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _CloseButton(),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.all(48),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _TitleAndLogo(),
                    SizedBox(height: 80),
                    _MenuItems(),
                    SizedBox(height: 80),
                    _SocialIcons(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final class _CloseButton extends StatelessWidget {
  const _CloseButton();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        padding: const EdgeInsets.all(24),
        icon: const Icon(Icons.close),
      ),
    );
  }
}

final class _TitleAndLogo extends StatelessWidget {
  const _TitleAndLogo();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).customThemeExtension.textTheme;
    final i18n = Translations.of(context);

    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/icon.webp',
                height: 46,
                width: 46,
              ),
              const SizedBox(width: 6),
              Text(
                i18n.title,
                style: textTheme.availableFonts.poppins.medium.copyWith(
                  fontSize: 40,
                ),
              ),
            ],
          ),
          Text(
            i18n.year,
            style: textTheme.availableFonts.poppins.bold.copyWith(
              fontSize: 56,
            ),
          ),
        ],
      ),
    );
  }
}

final class _MenuItems extends StatelessWidget {
  const _MenuItems();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).customThemeExtension.textTheme;
    final i18n = Translations.of(context);
    final naviItemDataList = <NaviItemButtonData>[
      NaviItemButtonData(
        title: i18n.header.speakerWanted,
        key: NaviSectionKey.speakerWanted.key,
      ),
      NaviItemButtonData(
        title: i18n.header.sponsors,
        key: NaviSectionKey.sponsors.key,
      ),
      /// 未実装のセクションはコメントアウト
      // NaviItemButtonData(
      //   title: i18n.header.staff,
      //   key: NaviSectionKey.staff.key,
      // ),
    ];

    return Column(
      children: [
        ...naviItemDataList.map(
          (data) => _menuItemButton(
            data.title,
            textTheme,
            () async {
              Navigator.of(context).pop();
              await scrollToSection(data.key, context);
            },
          ),
        ),
        const Divider(color: Color(0xFFD8D8D8)),
      ],
    );
  }

  Widget _menuItemButton(
    String text,
    TextThemeExtension textTheme,
    VoidCallback onPressed,
  ) {
    return Column(
      children: [
        const Divider(color: Color(0xFFD8D8D8)),
        SizedBox(
          width: double.infinity,
          child: FilledButton.tonal(
            onPressed: onPressed,
            style: FilledButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 24),
              shape: const RoundedRectangleBorder(),
              alignment: Alignment.centerLeft,
              backgroundColor: Colors.transparent,
              minimumSize: const Size(double.infinity, 64),
            ),
            child: Text(
              text,
              style: textTheme.availableFonts.poppins.regular.copyWith(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

final class _SocialIcons extends StatelessWidget {
  const _SocialIcons();

  @override
  Widget build(BuildContext context) {
    final socialIcons = [
      const _SocialIconData(
        icon: Padding(
          padding: EdgeInsets.all(5),
          child: VectorGraphic(
            loader: AssetBytesLoader('assets/svg/products/x.svg'),
            height: 30,
            width: 30,
          ),
        ),
        url: 'https://x.com/FlutterKaigi',
      ),
      const _SocialIconData(
        icon: VectorGraphic(
          loader: AssetBytesLoader('assets/svg/products/github.svg'),
          colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
        ),
        url: 'https://github.com/FlutterKaigi/2024',
      ),
      const _SocialIconData(
        icon: VectorGraphic(
          loader: AssetBytesLoader('assets/svg/products/discord.svg'),
          colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
        ),
        url: 'https://discord.com/invite/Nr7H8JTJSF',
      ),
      const _SocialIconData(
        icon: VectorGraphic(
          loader: AssetBytesLoader('assets/svg/products/medium.svg'),
          colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
        ),
        url: 'https://medium.com/flutterkaigi',
      ),
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: socialIcons
          .map(
            (iconData) => Link(
              uri: Uri.parse(iconData.url),
              builder: (_, __) => IconButton(
                onPressed: () async => launchUrl(Uri.parse(iconData.url)),
                iconSize: 40,
                icon: iconData.icon,
              ),
            ),
          )
          .toList(),
    );
  }
}

final class _SocialIconData {
  const _SocialIconData({required this.icon, required this.url});
  final Widget icon;
  final String url;
}
