import 'package:flutter/material.dart';
import 'package:packages_app_features_session/l10n.dart';

class SessionPage extends StatelessWidget {
  const SessionPage({
    required String sessionId,
    super.key,
  }) : _sessionId = sessionId;

  final String _sessionId;

  @override
  Widget build(BuildContext context) {
    final l = L10nSession.of(context);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('${l.sessionPageTitle}: $_sessionId'),
      ),
    );
  }
}
