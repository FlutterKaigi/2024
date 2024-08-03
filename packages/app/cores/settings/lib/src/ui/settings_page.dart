import 'package:flutter/material.dart';
import 'package:packages_app_cores_settings/l10n.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l = L10nSettings.of(context);
    return Center(
      child: Text(l.settingsPageTitle),
    );
  }
}
