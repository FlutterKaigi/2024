import 'package:common_data/session.dart';
import 'package:conference_2024_website/feature/session/data/model/special_session.dart';
import 'package:conference_2024_website/feature/session/data/sessions_notifier.dart';
import 'package:conference_2024_website/feature/session/ui/components/session_table_card/special_session_card.dart';
import 'package:conference_2024_website/feature/session/ui/components/session_table_grid/sessions_row.dart';
import 'package:flutter/material.dart';

class TimeSlotRow extends StatelessWidget {
  const TimeSlotRow({
    required this.startTime,
    required this.sessions,
    required this.sessionVenues,
    this.specialSession,
    super.key,
  });

  final DateTime startTime;
  final List<SessionsWithSessionVenue> sessions;
  final List<SessionVenuesWithSessionsV2> sessionVenues;
  final SpecialSession? specialSession;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (specialSession != null && specialSession!.venueId == null)
              Expanded(
                child: SpecialSessionCard(session: specialSession!),
              )
            else
              SessionsRow(
                sessions: sessions,
                sessionVenues: sessionVenues,
                specialSession: specialSession,
              ),
          ],
        ),
      ),
    );
  }
}
