import 'package:app_cores_settings/l10n.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l = L10nSettings.of(context);
    return Scaffold(
      body: Center(
        child: Text(l.settingsPageTitle),
      ),
    );
  }
}
