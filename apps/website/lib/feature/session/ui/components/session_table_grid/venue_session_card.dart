import 'package:collection/collection.dart';
import 'package:common_data/session.dart';
import 'package:conference_2024_website/feature/session/data/special_sessions_notifier.dart';
import 'package:flutter/material.dart';
import 'package:conference_2024_website/feature/session/ui/components/session_table_card/session_card.dart';
import 'package:conference_2024_website/feature/session/ui/components/session_table_card/special_session_card.dart';
import 'package:conference_2024_website/feature/session/ui/components/session_table_grid/session_grid.dart';

class VenueSessionCard extends StatelessWidget {
  const VenueSessionCard({
    required this.venue,
    required this.sessions,
    this.specialSession,
    super.key,
  });

  final SessionVenuesWithSessions venue;
  final List<SessionAndSessionVenue> sessions;
  final SpecialSession? specialSession;

  @override
  Widget build(BuildContext context) {
    final session = sessions.firstWhereOrNull(
      (s) => s.sessionVenue.id == venue.id,
    );

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: specialSession != null
            ? SpecialSessionCard(session: specialSession!)
            : session != null
                ? SessionCard(
                    sessionAndSessionVenue: session,
                  )
                : const SizedBox(),
      ),
    );
  }
}
