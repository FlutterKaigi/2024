import 'package:conference_2024_website/feature/session/ui/components/session_table_grid/session_grid.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SessionTableSessionCard extends StatelessWidget {
  const SessionTableSessionCard({
    required this.sessionAndSessionVenue,
    super.key,
  });

  final SessionAndSessionVenue sessionAndSessionVenue;

  @override
  Widget build(BuildContext context) {
    final session = sessionAndSessionVenue.session;
    final timeFormatter = DateFormat('HH:mm');

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              session.title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            for (final speaker in session.speakers) Text(speaker.name),
            const SizedBox(height: 8),
            Text(
              '${timeFormatter.format(session.startsAt.toLocal())} '
              '-'
              ' ${timeFormatter.format(session.endsAt.toLocal())}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
