import 'package:conference_2024_website/i18n/strings.g.dart';
import 'package:conference_2024_website/ui/components/contents_margin/contents_margin.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vector_graphics/vector_graphics.dart';

final class SiteFooter extends StatelessWidget {
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

final class _FooterContents extends StatelessWidget {
  const _FooterContents();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;
    final i18n = Translations.of(context);

    return Container(
      padding: const EdgeInsets.only(top: 46.81, bottom: 40),
      child: ContentsMargin(
        child: Column(
          children: [
            const _PrevKaigi(),
            const Gap(28),
            const _SnsLinks(),
            const Gap(24),
            const _RequiredContents(),
            const Gap(40),
            Text(
              i18n.footer.copyRight,
              style: textTheme.footer,
              textAlign: TextAlign.center,
            ),
            const Gap(24),
            Text(
              i18n.footer.googleFlutter1,
              style: textTheme.footer,
              textAlign: TextAlign.center,
            ),
            const Gap(24),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: i18n.footer.googleFlutter2,
                    style: textTheme.footer,
                  ),
                  const WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: VectorGraphic(
                        loader: AssetBytesLoader('assets/svg/flutter_icon.svg'),
                      ),
                    ),
                  ),
                  TextSpan(
                    text: i18n.footer.googleFlutter3,
                    style: textTheme.footer,
                  ),
                ],
              ),
            ),
            const Gap(40),
          ],
        ),
      ),
    );
  }
}

// button of 2021 / 2022 / 2023
final class _PrevKaigi extends StatelessWidget {
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
      ],
    );
  }

  Widget _yearButton(String year, String url, BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;

    return Link(
      uri: Uri.parse(url),
      builder: (context, _) {
        return TextButton(
          onPressed: () async {
            await launchUrl(Uri.parse(url));
          },
          child: Text(
            year,
            style: textTheme.footer,
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

final class _RequiredContents extends HookWidget {
  const _RequiredContents();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;
    final i18n = Translations.of(context);

    final version = useState<String>('');

    useEffect(
      () {
        // packageInfoの情報をライセンスページを表示する際に同期的に扱いたいため、事前に取得しておく
        Future.microtask(() async {
          final packageInfo = await PackageInfo.fromPlatform();
          version.value = packageInfo.version;
        });
        return null;
      },
      [],
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // code of conduct
        _linkButton(
          i18n.footer.codeOfConduct,
          'https://flutterkaigi.jp/flutterkaigi/Code-of-Conduct.ja.html',
          context,
        ),
        const Gap(40),
        // privacy policy
        _linkButton(
          i18n.footer.privacyPolicy,
          'https://flutterkaigi.jp/flutterkaigi/Privacy-Policy.ja.html',
          context,
        ),
        const Gap(40),
        // contact
        _linkButton(
          i18n.footer.contact,
          'https://docs.google.com/forms/d/e/1FAIpQLSemYPFEWpP8594MWI4k3Nz45RJzMS7pz1ufwtnX4t3V7z2TOw/viewform',
          context,
        ),
        const Gap(40),
        // license
        TextButton(
          onPressed: () {
            showLicensePage(
              context: context,
              applicationName: 'FlutterKaigi 2024',
              applicationVersion: version.value,
              applicationIcon: Image.asset('assets/images/icon.webp'),
              applicationLegalese: '© 2024 FlutterKaigi',
            );
          },
          child: Text(
            i18n.footer.license,
            style: textTheme.footer,
          ),
        ),
      ],
    );
  }

  Widget _linkButton(String text, String url, BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;

    return Link(
      uri: Uri.parse(url),
      builder: (context, _) {
        return TextButton(
          onPressed: () async {
            await launchUrl(Uri.parse(url));
          },
          child: Text(
            text,
            style: textTheme.footer,
          ),
        );
      },
    );
  }
}

final class _SnsLinks extends StatelessWidget {
  const _SnsLinks();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildIconButton(
          // Twitterだけ余白のないクソデカアイコンなので、少し小さくしている
          icon: const Padding(
            padding: EdgeInsets.all(5),
            child: VectorGraphic(
              loader: AssetBytesLoader('assets/svg/products/x.svg'),
              height: 30,
              width: 30,
            ),
          ), // X icon
          url: 'https://x.com/FlutterKaigi',
        ),
        const Gap(40),
        _buildIconButton(
          icon: const VectorGraphic(
            loader: AssetBytesLoader('assets/svg/products/github.svg'),
            height: 40,
            width: 40,
            colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
          ),
          url: 'https://github.com/FlutterKaigi/2024',
        ),
        const Gap(40),
        _buildIconButton(
          icon: const VectorGraphic(
            loader: AssetBytesLoader('assets/svg/products/discord.svg'),
            height: 40,
            width: 40,
            colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
          ),
          url: 'https://discord.com/invite/Nr7H8JTJSF',
        ),
        const Gap(40),
        _buildIconButton(
          icon: const VectorGraphic(
            loader: AssetBytesLoader('assets/svg/products/medium.svg'),
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
      builder: (context, _) {
        return IconButton(
          onPressed: () async {
            await launchUrl(Uri.parse(url));
          },
          iconSize: 40,
          icon: icon,
        );
      },
    );
  }
}

final class _FooterBackground extends StatelessWidget {
  const _FooterBackground();

  @override
  Widget build(BuildContext context) {
    const svg = 'assets/svg/bg_footer.svg';
    final size = MediaQuery.sizeOf(context);

    const loader = AssetBytesLoader(svg);
    return VectorGraphic(
      fit: BoxFit.fill,
      width: size.width,
      loader: loader,
    );
  }
}
