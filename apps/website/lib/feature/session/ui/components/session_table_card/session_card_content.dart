import 'package:conference_2024_website/feature/session/ui/components/session_table_grid/session_grid.dart';
import 'package:flutter/material.dart';

class SessionCardContent extends StatelessWidget {
  const SessionCardContent({
    required this.sessionAndSessionVenue,
    super.key,
  });

  final SessionAndSessionVenue sessionAndSessionVenue;

  @override
  Widget build(BuildContext context) {
    final session = sessionAndSessionVenue.session;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          session.title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        for (final speaker in session.speakers) Text(speaker.name),
        const SizedBox(height: 8),
        const Spacer(),
        Text(
          '${_formatTime(session.startsAt)} - ${_formatTime(session.endsAt)}',
          style: Theme.of(context).textTheme.bodySmall,
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
