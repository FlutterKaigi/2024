import 'package:flutter/material.dart';
import 'package:packages_app_features_session/l10n.dart';

class SessionsPage extends StatelessWidget {
  const SessionsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l = L10nSession.of(context);
    return Center(
      child: Text(l.sessionsPageTitle),
    );
  }
}
