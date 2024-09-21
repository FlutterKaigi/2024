import 'package:flutter/material.dart';
import 'package:ticket_web/core/components/responsive_content_container.dart';
import 'package:ticket_web/core/theme/extension/theme_extension.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vector_graphics/vector_graphics_compat.dart';

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
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final i18n = Translations.of(context);

    return Container(
      padding: const EdgeInsets.only(top: 48, bottom: 40),
      child: ResponsiveContentContainer(
        child: Column(
          children: [
            const _PrevKaigi(),
            const SizedBox(height: 28),
            const _SnsLinks(),
            const SizedBox(height: 24),
            const _RequiredContents(),
            const SizedBox(height: 40),
            Text(
              i18n.footer.copyRight,
              style: textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Text(
              i18n.footer.googleCopyright.text0,
              style: textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: i18n.footer.googleCopyright.text1,
                    style: textTheme.bodyMedium,
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
                    style: textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

// button of 2021 / 2022 / 2023
class _PrevKaigi extends StatelessWidget {
  const _PrevKaigi();

  @override
  Widget build(BuildContext context) {
    return Row(
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            // code of conduct
            _linkButton(
              i18n.footer.codeOfConduct,
              'https://flutterkaigi.jp/flutterkaigi/Code-of-Conduct.ja.html',
              context,
            ),
            const SizedBox(width: 40),
            // privacy policy
            _linkButton(
              i18n.footer.privacyPolicy,
              'https://flutterkaigi.jp/flutterkaigi/Privacy-Policy.ja.html',
              context,
            ),
          ],
        ),
        // contact
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            _linkButton(
              i18n.footer.contact,
              'https://docs.google.com/forms/d/e/1FAIpQLSemYPFEWpP8594MWI4k3Nz45RJzMS7pz1ufwtnX4t3V7z2TOw/viewform',
              context,
            ),
            const SizedBox(width: 40),
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
        ),
      ],
    );
  }

  Widget _linkButton(String text, String url, BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Link(
      uri: Uri.parse(url),
      builder: (context, _) {
        return TextButton(
          onPressed: () async {
            await launchUrl(Uri.parse(url));
          },
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
          icon: const Padding(
            padding: EdgeInsets.all(5),
            child: VectorGraphic(
              loader: AssetBytesLoader('assets/images/sns/x.svg'),
              height: 30,
              width: 30,
            ),
          ), // X icon
          url: 'https://x.com/FlutterKaigi',
        ),
        _buildIconButton(
          icon: const VectorGraphic(
            loader: AssetBytesLoader('assets/images/sns/github.svg'),
            height: 40,
            width: 40,
            colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
          ),
          url: 'https://github.com/FlutterKaigi/2024',
        ),
        _buildIconButton(
          icon: const VectorGraphic(
            loader: AssetBytesLoader('assets/images/sns/discord.svg'),
            height: 40,
            width: 40,
            colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
          ),
          url: 'https://discord.com/invite/Nr7H8JTJSF',
        ),
        _buildIconButton(
          icon: const VectorGraphic(
            loader: AssetBytesLoader('assets/images/sns/medium.svg'),
            height: 40,
            width: 40,
            colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
          ),
          url: 'https://medium.com/flutterkaigi',
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
