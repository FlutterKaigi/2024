import 'dart:math';

import 'package:common_data/staff.dart';
import 'package:conference_2024_website/core/extension/size_ex.dart';
import 'package:conference_2024_website/ui/components/sns_icon.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/link.dart';

class StaffCard extends StatelessWidget {
  const StaffCard({
    required this.staff,
    super.key,
  });

  static double width({
    required bool isMobile,
  }) =>
      _imageSize(isMobile: isMobile) +
      margin(isMobile: isMobile) * 2 +
      (isMobile ? 24 : 0);

  static double margin({
    required bool isMobile,
  }) =>
      isMobile ? 8 : 24;

  final Staff staff;

  static double _imageSize({
    required bool isMobile,
  }) =>
      isMobile ? 90 : 120;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;

    final isMobile = MediaQuery.sizeOf(context).isMobile;

    final contentsPadding = isMobile ? 4.0 : 8.0;
    final imageSize = _imageSize(isMobile: isMobile);

    final snsIconSize = isMobile ? 20.0 : 24.0;

    return SizedBox(
      width: width(isMobile: isMobile),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0xFFA8A8A8).withValues(alpha: 0.25),
              blurRadius: 4,
              offset: const Offset(2, 2),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(margin(isMobile: isMobile)),
          child: Column(
            children: [
              ClipOval(
                // width: imageSize = 90 or 120
                child: Image.network(
                  staff.iconUrl.toString(),
                  fit: BoxFit.cover,
                  height: imageSize,
                  width: imageSize,
                  errorBuilder: (_, __, ___) => Padding(
                    padding: const EdgeInsets.all(1 / 2 - sqrt2 / 4),
                    child: Image.asset(
                      'assets/images/icon.webp',
                      // アイコンの一部が切り取られることを防ぐために、余白を追加する
                      height: (sqrt2 / 2) * imageSize,
                      width: (sqrt2 / 2) * imageSize,
                    ),
                  ),
                ),
              ),
              Gap(contentsPadding),
              Text(
                staff.name,
                style: textTheme.label.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
              Gap(contentsPadding),
              Text(
                staff.greeting,
                style: textTheme.body.copyWith(
                  fontSize: 16,
                  color: const Color(0xFFEF629F),
                ),
                textAlign: TextAlign.center,
              ),
              Gap(contentsPadding),
              const Spacer(),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: staff.snsAccounts
                    .map(
                      (sns) => Link(
                        uri: sns.link,
                        builder: (_, followLink) => IconButton(
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(
                            minWidth: snsIconSize,
                            minHeight: snsIconSize,
                          ),
                          icon: SnsIcon(
                            snsType: sns.type,
                            color: Colors.black,
                          ),
                          onPressed: followLink,
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Staff>('staff', staff));
  }
}
