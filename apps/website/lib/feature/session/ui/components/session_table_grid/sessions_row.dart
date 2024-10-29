import 'package:common_data/session.dart';
import 'package:conference_2024_website/feature/session/data/model/special_session.dart';
import 'package:conference_2024_website/feature/session/ui/components/session_table_grid/session_grid.dart';
import 'package:conference_2024_website/feature/session/ui/components/session_table_grid/venue_session_card.dart';
import 'package:flutter/material.dart';

class SessionsRow extends StatelessWidget {
  const SessionsRow({
    required this.sessions,
    required this.sessionVenues,
    this.specialSession,
    super.key,
  });

  final List<SessionAndSessionVenue> sessions;
  final List<SessionVenuesWithSessions> sessionVenues;
  final SpecialSession? specialSession;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (final venue in sessionVenues)
            VenueSessionCard(
              venue: venue,
              sessions: sessions,
              specialSession:
                  specialSession?.venueId == venue.id ? specialSession : null,
            ),
        ],
      ),
    );
  }
}
