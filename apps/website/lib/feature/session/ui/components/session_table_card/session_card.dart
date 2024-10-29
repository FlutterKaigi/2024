import 'package:flutter/material.dart';
import 'package:conference_2024_website/feature/session/ui/components/session_table_grid/session_grid.dart';
import 'package:conference_2024_website/feature/session/ui/components/session_table_card/session_card_content.dart';

class SessionCard extends StatelessWidget {
  const SessionCard({
    required this.sessionAndSessionVenue,
    super.key,
  });

  final SessionAndSessionVenue sessionAndSessionVenue;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SessionCardContent(
          sessionAndSessionVenue: sessionAndSessionVenue,
        ),
      ),
    );
  }
}
