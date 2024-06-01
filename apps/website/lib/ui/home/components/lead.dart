import 'package:conference_2024_website/i18n/strings.g.dart';
import 'package:conference_2024_website/ui/components/button/app_button.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:vector_graphics/vector_graphics.dart';

class Lead extends StatelessWidget {
  const Lead({super.key});

  @override
  Widget build(BuildContext context) {
    final backgroundColor = Colors.white.withOpacity(0.6);
    final t = Translations.of(context);

    final textTheme = Theme.of(context).customThemeExtension.textTheme;

    const padding = SizedBox(height: 16);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: backgroundColor,
        boxShadow: const [
          BoxShadow(
            blurRadius: 4,
            offset: Offset(2, 2),
            color: Color.fromRGBO(168, 168, 168, 0.25),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              t.lead.message,
              style: textTheme.body,
            ),
            padding,
            SizedBox(
              width: 480,
              child: AppButton.primaryLink(
                label: Text(t.lead.xAccount),
                link: Uri.parse('https://x.com/FlutterKaigi'),
                leading: const VectorGraphic(
                  loader: AssetBytesLoader('assets/svg/products/x.svg'),
                  height: 24,
                  width: 24,
                ),
              ),
            ),
            padding,
            const _DateAndLocation(),
          ],
        ),
      ),
    );
  }
}

class _DateAndLocation extends StatelessWidget {
  const _DateAndLocation();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    final textTheme = Theme.of(context).customThemeExtension.textTheme;

    return Text.rich(
      TextSpan(
        style: textTheme.label.copyWith(
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: '${t.lead.date.prefix}: ${t.lead.date.value}\n',
          ),
          TextSpan(
            text: '${t.lead.location.prefix}: ',
          ),
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Link(
              uri: Uri.parse('https://ariake-hall.jp/'),
              target: LinkTarget.blank,
              builder: (context, followLink) => InkWell(
                onTap: followLink,
                child: Text(
                  t.lead.location.value,
                  style: textTheme.label.copyWith(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          // location icon
          const WidgetSpan(
            child: Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(
                Icons.location_on,
                size: 32,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
