import 'package:common_data/session.dart';
import 'package:conference_2024_website/core/router/router.dart';
import 'package:conference_2024_website/ui/components/profile_avatar.dart';
import 'package:conference_2024_website/ui/components/sponsor_logo.dart';
import 'package:conference_2024_website/ui/pages/sponsor/sponsor_page.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SessionDetailsCard extends StatelessWidget {
  const SessionDetailsCard({
    required this.session,
    super.key,
  });

  final SessionWithSpeakerAndSponsor session;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;
    final dateTimeFormatter = DateFormat('yyyy/MM/dd HH:mm');
    final timeFormatter = DateFormat('HH:mm');

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              session.title,
              style: textTheme.availableFonts.notoSansJp.bold.copyWith(
                fontSize: 24,
              ),
            ),
            const Gap(16),
            Text(
              '${dateTimeFormatter.format(session.startsAt.toLocal())} - '
              '${timeFormatter.format(session.endsAt.toLocal())}',
              style: textTheme.caution.copyWith(
                fontSize: 16,
              ),
            ),
            const Gap(24),
            if (session.speakers.isNotEmpty) ...[
              Text(
                '登壇者',
                style: textTheme.availableFonts.notoSansJp.bold.copyWith(
                  fontSize: 20,
                ),
              ),
              const Gap(8),
              for (final speaker in session.speakers) ...[
                _SpeakerCard(profile: speaker),
                const Gap(8),
              ],
              const Gap(24),
            ],
            if (session.sponsors.isNotEmpty) ...[
              Text(
                'スポンサー',
                style: textTheme.availableFonts.notoSansJp.bold.copyWith(
                  fontSize: 20,
                ),
              ),
              const Gap(8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  for (final sponsor in session.sponsors)
                    SponsorLogo(
                      sponsor: sponsor,
                      height: 64,
                      onTap: () async =>
                          SponsorRoute(id: sponsor.id).push<void>(context),
                    ),
                ],
              ),
              const Gap(24),
            ],
            Text(
              'セッション内容',
              style: textTheme.availableFonts.notoSansJp.bold.copyWith(
                fontSize: 20,
              ),
            ),
            const Gap(8),
            MarkdownBody(
              data: session.description,
              softLineBreak: true,
              styleSheet: MarkdownStyleSheet(
                p: textTheme.availableFonts.notoSansJp.regular.copyWith(
                  fontSize: 16,
                ),
              ),
              onTapLink: (text, href, title) async => launchUrlString(href!),
            ),
          ],
        ),
      ),
    );
  }
}

class _SpeakerCard extends StatelessWidget {
  const _SpeakerCard({
    required this.profile,
  });

  final ProfileWithSns profile;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          ProfileAvatar(
            profile: profile,
            size: 48,
          ),
          const Gap(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  profile.name,
                  style: textTheme.availableFonts.notoSansJp.bold.copyWith(
                    fontSize: 16,
                  ),
                ),
                const Gap(4),
                Text(
                  profile.comment,
                  style: textTheme.availableFonts.notoSansJp.regular,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
