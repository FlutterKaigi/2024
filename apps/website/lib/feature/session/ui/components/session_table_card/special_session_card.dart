import 'package:conference_2024_website/feature/session/data/model/special_session.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/link.dart';

class SpecialSessionCard extends StatelessWidget {
  const SpecialSessionCard({
    required this.session,
    super.key,
  });

  final SpecialSession session;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;
    final duration = session.endsAt != null
        ? session.endsAt!.difference(session.startsAt)
        : const Duration(minutes: 30); // 終了時間が指定されていない場合は30分とする

    // 30分を1単位としてパディングを計算
    const paddingUnit = 16.0; // 30分あたりの基本のパディング
    final paddingMultiplier = duration.inMinutes / 30;
    final verticalPadding = paddingUnit * paddingMultiplier;

    final timeFormatter = DateFormat('HH:mm');

    return Card(
      color: _getBackgroundColor(theme),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: verticalPadding,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              session.title,
              style: textTheme.availableFonts.notoSansJp.bold.copyWith(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            if (SpecialSessionType.keynote == session.type)
              _KeyNoteDetail(session: session),
            if (session.endsAt != null)
              Text(
                '${timeFormatter.format(session.startsAt.toLocal())} - '
                '${timeFormatter.format(session.endsAt!.toLocal())}',
                style: textTheme.caution,
                textAlign: TextAlign.center,
              )
            else
              Text(
                timeFormatter.format(session.startsAt.toLocal()),
                style: theme.textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
          ],
        ),
      ),
    );
  }

  Color _getBackgroundColor(ThemeData theme) {
    return switch (session.type) {
      SpecialSessionType.opening => theme.colorScheme.surfaceContainerHighest,
      SpecialSessionType.keynote => theme.colorScheme.primaryContainer,
      SpecialSessionType.lunch => theme.colorScheme.secondaryContainer,
      SpecialSessionType.preparation => theme.colorScheme.tertiaryContainer,
      SpecialSessionType.closing => theme.colorScheme.surfaceContainerHighest,
      SpecialSessionType.party => theme.colorScheme.tertiaryContainer,
    };
  }
}

class _KeyNoteDetail extends StatelessWidget {
  const _KeyNoteDetail({
    required this.session,
  });
  final SpecialSession session;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;

    return Link(
      uri: Uri.parse('${session.speaker!.xUri}'),
      builder: (context, followUri) => InkWell(
        onTap: followUri,
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: Image.asset(
                  session.imagePath.toString(),
                  fit: BoxFit.cover,
                  width: 64,
                  height: 64,
                ),
              ),
              const SizedBox(width: 8),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      session.speakerTitle!,
                      style: textTheme.availableFonts.notoSansJp.bold.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      session.speaker!.name,
                      style:
                          textTheme.availableFonts.notoSansJp.regular.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
