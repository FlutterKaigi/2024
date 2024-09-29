import 'package:common_data/sponsor.dart';
import 'package:conference_2024_website/core/extension/size_ex.dart';
import 'package:conference_2024_website/feature/sponsor/ui/sponsor_logo.dart';
import 'package:conference_2024_website/gen/i18n/strings.g.dart';
import 'package:conference_2024_website/ui/pages/sponsor/components/sponsor_type_logo.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/link.dart';

class SponsorView extends StatelessWidget {
  const SponsorView({
    required this.sponsor,
    super.key,
  });

  final SponsorWithSession sponsor;

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);

    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;

    final backgroundColor = Colors.white.withValues(alpha: 0.6);

    final size = MediaQuery.sizeOf(context);

    final padding = size.isMobile ? 16.0 : 40.0;

    print(sponsor.description);

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
      child: AnimatedPadding(
        padding: EdgeInsets.all(padding),
        duration: const Duration(milliseconds: 300),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (sponsor.logoUrl != null)
              Center(
                child: SponsorLogo(
                  logoUri: sponsor.logoUrl!,
                  height: size.height * 0.4,
                ),
              ),
            const Gap(40),
            SponsorTypeLogo.withText(sponsor.type),
            const Gap(40),
            Text(
              sponsor.name,
              style: textTheme.headline.copyWith(
                fontSize: 32,
              ),
            ),
            const Gap(16),
            if (sponsor.url != null)
              Link(
                uri: sponsor.url,
                builder: (context, followLink) => TextButton(
                  onPressed: followLink,
                  child: Text(
                    sponsor.url!.toString(),
                    style: textTheme.body,
                  ),
                ),
              ),
            const Gap(16),
            Text(
              sponsor.description.replaceAll('\nモバイルアプリ開発', 'AAAA!!'),
              style: textTheme.body,
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
      DiagnosticsProperty<SponsorWithSession>(
        'sponsor',
        sponsor,
      ),
    );
  }
}
