import 'package:conference_2024_website/core/extension/size_ex.dart';
import 'package:conference_2024_website/feature/session/ui/components/session_table_card/session_card_content.dart';
import 'package:conference_2024_website/feature/session/ui/components/session_table_grid/session_grid.dart';
import 'package:flutter/material.dart';

class SessionCard extends StatelessWidget {
  const SessionCard({
    required this.sessionAndSessionVenue,
    super.key,
  });

  final SessionAndSessionVenue sessionAndSessionVenue;

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.sizeOf(context).isMobile;

    return Card(
      child: Padding(
        padding: EdgeInsets.all(isMobile ? 8 : 16),
        child: SessionCardContent(
          sessionAndSessionVenue: sessionAndSessionVenue,
        ),
      ),
    );
  }
}
