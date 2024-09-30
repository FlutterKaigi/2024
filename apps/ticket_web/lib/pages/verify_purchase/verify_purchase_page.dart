import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class VerifyPurchaseRoute extends GoRouteData {
  const VerifyPurchaseRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    final sessionId = state.pathParameters['sessionId']!;

    return VerifyPurchasePage(
      stripeSessionId: sessionId,
    );
  }
}

class VerifyPurchasePage extends StatelessWidget {
  const VerifyPurchasePage({
    required this.stripeSessionId,
    super.key,
  });

  final String stripeSessionId;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
