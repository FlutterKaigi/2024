import 'package:conference_2024_website/ui/components/button/app_button.dart';
import 'package:conference_2024_website/ui/components/contents_margin/contents_margin.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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

    return Container(
      padding: const EdgeInsets.only(top: 46.81, bottom: 40),
      child: ContentsMargin(
        child: Column(
          children: [
            const _PrevKaigi(),
            const Gap(28),
            const _SnsLinks(),
            const Gap(24),
            Text(
              // TODO: l18n対応
              '@ FlutterKaigi 2024 実行委員会',
              style: textTheme.footer,
              textAlign: TextAlign.center,
            ),
            const Gap(24),
            Text(
              'Flutter and the related logo are trademarks of Google LLC. FlutterKaigi is not affiliated with or otherwise sponsored by Google LLC.',
              style: textTheme.footer,
              textAlign: TextAlign.center,
            ),
            const Gap(24),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'The Flutter name and the Flutter logo',
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
                    text: 'are trademarks owned by Google.',
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

    return TextButton(
      onPressed: () async{
        await launchUrl(Uri.parse(url));
      },
      child: Text(
        year,
        style: textTheme.footer,
      ),
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

final class _SnsLinks extends StatelessWidget {
  const _SnsLinks();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // TODO: 正しいIconを設定
        _buildIconButton(
          icon: Icons.close, // X icon
          url: 'https://x.com/FlutterKaigi',
        ),
        const Gap(40),
        _buildIconButton(
          icon: Icons.code, // Github icon
          url: 'https://github.com/FlutterKaigi/2024',
        ),
        const Gap(40),
        _buildIconButton(
          icon: Icons.chat, // Discord icon
          url: 'https://discord.com/invite/Nr7H8JTJSF',
        ),
        const Gap(40),
        _buildIconButton(
          icon: Icons.book, // Medium icon
          url: 'https://medium.com', // Replace with your URL
        ),
      ],
    );
  }

  Widget _buildIconButton({required IconData icon, required String url}) {
    return IconButton(
      icon: Icon(icon),
      iconSize: 40,
      onPressed: () async{
        await launchUrl(Uri.parse(url));
      }
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
