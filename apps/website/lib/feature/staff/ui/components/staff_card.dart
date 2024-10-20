import 'package:common_data/staff.dart';
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

  static double width = 220;
  static double margin = 24;

  final Staff staff;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;

    return SizedBox(
      width: width,
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
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              CircleAvatar(
                foregroundImage: NetworkImage(staff.iconUrl.toString()),
                onForegroundImageError: (_, __) => const Center(
                  child: Icon(Icons.error),
                ),
                radius: 120 / 2,
              ),
              const Gap(16),
              Text(
                staff.name,
                style: textTheme.label.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
              const Gap(8),
              Text(
                staff.greeting,
                style: textTheme.body.copyWith(
                  fontSize: 16,
                  color: const Color(0xFFEF629F),
                ),
                textAlign: TextAlign.center,
              ),
              const Gap(8),
              const Spacer(),
              Wrap(
                children: staff.snsAccounts
                    .map(
                      (sns) => Link(
                        uri: sns.link,
                        builder: (_, followLink) => IconButton(
                          padding: EdgeInsets.zero,
                          icon: SnsIcon(
                            snsType: sns.type,
                            color: Colors.black,
                            size: 20,
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
