import 'package:conference_2024_website/core/extension/size_ex.dart';
import 'package:conference_2024_website/feature/session/ui/components/session_table_card/session_card_content.dart';
import 'package:conference_2024_website/feature/session/ui/components/session_table_grid/session_grid.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SessionCard extends StatelessWidget {
  const SessionCard({
    required this.sessionAndSessionVenue,
    super.key,
  });

  final SessionAndSessionVenue sessionAndSessionVenue;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isMobile = MediaQuery.sizeOf(context).isMobile;

    final child = InkWell(
      onTap: () => context.push('/session/${sessionAndSessionVenue.session.id}'),
      child: Padding(
        padding: EdgeInsets.all(isMobile ? 8 : 16),
        child: SessionCardContent(
          sessionAndSessionVenue: sessionAndSessionVenue,
        ),
      ),
    );

    if (sessionAndSessionVenue.session.isLightningTalk) {
      return Card.outlined(
        clipBehavior: Clip.antiAlias,
        color: theme.colorScheme.surfaceContainerLow,
        child: Banner(
          message: 'LT',
          location: BannerLocation.bottomEnd,
          color: theme.colorScheme.primary,
          child: child,
        ),
      );
    }

    return Card.outlined(
      clipBehavior: Clip.antiAlias,
      color: theme.colorScheme.surfaceBright,
      child: child,
    );
  }
}
