import 'dart:async';

import 'package:app_cores_settings/l10n.dart';
import 'package:app_cores_settings/src/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({super.key});

  @override
  Widget build(BuildContext context) {
    final l = L10nSettings.of(context);
    final router = GoRouter.of(context);
    return IconButton(
      icon: Semantics(
        label: l.semanticsSettingsButtonLabel,
        child: const Icon(Icons.settings),
      ),
      onPressed: () => unawaited(
        router.push(const SettingsPageRoute().location),
      ),
    );
  }
}
