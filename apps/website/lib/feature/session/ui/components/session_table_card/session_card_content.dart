import 'package:common_data/speaker.dart';
import 'package:conference_2024_website/feature/session/data/sessions_notifier.dart';
import 'package:conference_2024_website/ui/components/profile_avatar.dart';
import 'package:conference_2024_website/ui/components/sponsor_logo.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/material.dart';

class SessionCardContent extends StatelessWidget {
  const SessionCardContent({
    required this.sessionAndSessionVenue,
    super.key,
  });

  final SessionsWithSessionVenue sessionAndSessionVenue;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;

    final session = sessionAndSessionVenue.session;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          session.title,
          style: textTheme.availableFonts.notoSansJp.bold.copyWith(
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 4),
        Wrap(
          spacing: 4,
          runSpacing: 4,
          children: [
            for (final speaker in session.speakers) _Speaker(profile: speaker),
          ],
        ),
        if (session.sponsors.isNotEmpty) ...[
          const SizedBox(height: 8),
          for (final sponsor in session.sponsors)
            SponsorLogo(
              sponsor: sponsor,
            ),
        ],
        const SizedBox(height: 8),
        const Spacer(),
        Text(
          '${_formatTime(session.startsAt)} - ${_formatTime(session.endsAt)}',
          style: textTheme.caution,
        ),
      ],
    );
  }

  String _formatTime(DateTime time) {
    final localTime = time.toLocal();
    return '${localTime.hour.toString().padLeft(2, '0')}'
        ':'
        '${localTime.minute.toString().padLeft(2, '0')}';
  }
}

class _Speaker extends StatelessWidget {
  const _Speaker({
    required this.profile,
  });

  final Speaker profile;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;

    return Row(
      children: [
        ProfileAvatar(profile: profile),
        const SizedBox(width: 4),
        Text(
          profile.name,
          style: textTheme.availableFonts.notoSansJp.regular,
        ),
      ],
    );
  }
}
