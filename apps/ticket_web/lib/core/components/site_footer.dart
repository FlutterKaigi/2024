import 'package:common_data/constant.dart';
import 'package:flutter/material.dart';
import 'package:ticket_web/core/components/responsive_content_container.dart';
import 'package:ticket_web/core/gen/assets.gen.dart';
import 'package:ticket_web/core/theme/extension/theme_extension.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';
import 'package:url_launcher/link.dart';

class SiteFooter extends StatelessWidget {
  const SiteFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Positioned.fill(
          child: _FooterBackground(),
        ),
        _FooterContents(),
      ],
    );
  }
}

class _FooterContents extends StatelessWidget {
  const _FooterContents();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 48, bottom: 40),
      child: const ResponsiveContentContainer(
        child: Column(
          children: [
            _PreviousFlutterKaigiLinks(),
            SizedBox(height: 28),
            _SnsLinks(),
            SizedBox(height: 28),
            _RequiredContents(),
            SizedBox(height: 40),
            _Copyright(),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

// button of 2021 / 2022 / 2023 / 2024
class _PreviousFlutterKaigiLinks extends StatelessWidget {
  const _PreviousFlutterKaigiLinks();

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _yearButton('2021', 'https://flutterkaigi.jp/2021/', context),
          _dividerSlash(),
          _yearButton('2022', 'https://flutterkaigi.jp/2022/', context),
          _dividerSlash(),
          _yearButton('2023', 'https://flutterkaigi.jp/2023/', context),
          _dividerSlash(),
          _yearButton('2024', 'https://flutterkaigi.jp/2024/', context),
        ],
      ),
    );
  }

  Widget _yearButton(String year, String url, BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final uri = Uri.parse(url);

    return Link(
      uri: uri,
      builder: (context, action) {
        return TextButton(
          onPressed: action,
          child: Text(
            year,
            style: textTheme.bodyMedium,
          ),
        );
      },
    );
  }

  Widget _dividerSlash() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Text(
        '/',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }
}

class _RequiredContents extends StatelessWidget {
  const _RequiredContents();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final i18n = Translations.of(context);

    return Wrap(
      alignment: WrapAlignment.center,
      runAlignment: WrapAlignment.center,
      spacing: 40,
      runSpacing: 8,
      children: [
        // code of conduct
        _linkButton(
          i18n.footer.codeOfConduct,
          'https://flutterkaigi.jp/flutterkaigi/Code-of-Conduct.ja.html',
          context,
        ),
        // privacy policy
        _linkButton(
          i18n.footer.privacyPolicy,
          'https://flutterkaigi.jp/flutterkaigi/Privacy-Policy.ja.html',
          context,
        ),
        _linkButton(
          i18n.footer.contact,
          'https://docs.google.com/forms/d/e/1FAIpQLSemYPFEWpP8594MWI4k3Nz45RJzMS7pz1ufwtnX4t3V7z2TOw/viewform',
          context,
        ),
        // license
        TextButton(
          onPressed: () {
            showLicensePage(
              context: context,
              applicationName: 'FlutterKaigi 2024 Ticket System',
              applicationIcon: Image.asset('assets/images/icon.webp'),
              applicationLegalese: '© 2024 FlutterKaigi',
            );
          },
          child: Text(
            i18n.footer.license,
            style: textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }

  Widget _linkButton(String text, String url, BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Link(
      uri: Uri.parse(url),
      builder: (context, action) {
        return TextButton(
          onPressed: action,
          child: Text(
            text,
            style: textTheme.bodyMedium,
          ),
        );
      },
    );
  }
}

class _SnsLinks extends StatelessWidget {
  const _SnsLinks();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 40,
      runSpacing: 8,
      children: [
        _buildIconButton(
          // Twitterだけ余白のないクソデカアイコンなので、少し小さくしている
          icon: Padding(
            padding: const EdgeInsets.all(5),
            child: Assets.images.sns.xSvg.svg(
              height: 30,
              width: 30,
            ),
          ), // X icon
          url: OfficialSocialUrls.x,
        ),
        _buildIconButton(
          icon: Assets.images.sns.githubSvg.svg(
            height: 40,
            width: 40,
            colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
          ),
          url: OfficialSocialUrls.github,
        ),
        _buildIconButton(
          icon: Assets.images.sns.discordSvg.svg(
            height: 40,
            width: 40,
            colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
          ),
          url: OfficialSocialUrls.discord,
        ),
        _buildIconButton(
          icon: Assets.images.sns.mediumSvg.svg(
            height: 40,
            width: 40,
            colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
          ),
          url: OfficialSocialUrls.medium,
        ),
      ],
    );
  }

  Widget _buildIconButton({required Widget icon, required String url}) {
    return Link(
      uri: Uri.parse(url),
      builder: (context, action) {
        return IconButton(
          onPressed: action,
          iconSize: 40,
          icon: icon,
        );
      },
    );
  }
}

class _Copyright extends StatelessWidget {
  const _Copyright();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final i18n = Translations.of(context);

    return DefaultTextStyle(
      style: textTheme.bodyMedium ?? const TextStyle(),
      child: Column(
        children: [
          Text(
            i18n.footer.copyRight,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          Text(
            i18n.footer.googleCopyright.text0,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: i18n.footer.googleCopyright.text1,
                ),
                const WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: FlutterLogo(
                      size: 16,
                    ),
                  ),
                ),
                TextSpan(
                  text: i18n.footer.googleCopyright.text2,
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _FooterBackground extends StatelessWidget {
  const _FooterBackground();

  @override
  Widget build(BuildContext context) {
    final gradientTheme = Theme.of(context).customThemeExtension.gradientTheme;

    return Opacity(
      opacity: 0.5,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: gradientTheme.tertiary,
        ),
      ),
    );
  }
}
