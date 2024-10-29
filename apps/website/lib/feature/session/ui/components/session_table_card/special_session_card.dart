import 'package:conference_2024_website/feature/session/data/special_sessions_notifier.dart';
import 'package:flutter/material.dart';

class SpecialSessionCard extends StatelessWidget {
  const SpecialSessionCard({
    required this.session,
    super.key,
  });

  final SpecialSession session;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final duration = session.endsAt != null
        ? session.endsAt!.difference(session.startsAt)
        : const Duration(minutes: 30); // 終了時間が指定されていない場合は30分とする

    // 30分を1単位としてパディングを計算
    const paddingUnit = 16.0; // 30分あたりの基本のパディング
    final paddingMultiplier = duration.inMinutes / 30;
    final verticalPadding = paddingUnit * paddingMultiplier;

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
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            if (session.endsAt != null) ...[
              const SizedBox(height: 8),
              Text(
                '${_formatTime(session.startsAt)} - '
                '${_formatTime(session.endsAt!)}',
                style: theme.textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ] else
              Text(
                _formatTime(session.startsAt),
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
    };
  }

  String _formatTime(DateTime time) {
    final localTime = time.toLocal();
    return '${localTime.hour.toString().padLeft(2, '0')}'
        ':'
        '${localTime.minute.toString().padLeft(2, '0')}';
  }
}
