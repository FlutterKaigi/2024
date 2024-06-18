import 'package:flutter/material.dart';
import 'package:packages_app_features_session/l10n.dart';

class SessionPage extends StatelessWidget {
  const SessionPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l = L10nSession.of(context);
    return Center(
      child: Text(l.sessionPageTitle),
    );
  }
}
