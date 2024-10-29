import 'package:conference_2024_website/core/router/router.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    // ... existing routes ...
    GoRoute(
      path: '/session/:sessionId',
      builder: (context, state) => SessionDetailsRoute(
        sessionId: state.pathParameters['sessionId']!,
      ).build(context, state),
    ),
  ],
);
