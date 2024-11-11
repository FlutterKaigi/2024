import 'dart:async';

import 'package:app_cores_core/util.dart';
import 'package:common_data/app_minimum_version.dart';
import 'package:conference_2024_app/gen/l10n/l10n.dart';
import 'package:flutter/material.dart';

final class ForceUpdateDialog extends StatelessWidget {
  const ForceUpdateDialog._({
    required AppMinimumVersion requiredVersion,
  }) : _requiredVersion = requiredVersion;

  final AppMinimumVersion _requiredVersion;

  static Future<void> show({
    required BuildContext context,
    required AppMinimumVersion requiredVersion,
  }) =>
      showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (_) => ForceUpdateDialog._(requiredVersion: requiredVersion),
      );

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return PopScope(
      canPop: false,
      child: AlertDialog(
        title: Text(l10n.forceUpdateDialogTitle),
        content: Text(
          l10n.forceUpdateDialogContent('${_requiredVersion.version}'),
        ),
        actions: [
          TextButton(
            onPressed: () {
              final url = switch (_requiredVersion.platform) {
                AppPlatform.ios => l10n.appStoreUrl,
                AppPlatform.android => l10n.playStoreUrl,
              };
              unawaited(
                launchInExternalApp(Uri.parse(url)),
              );
            },
            child: Text(l10n.forceUpdateDialogNavigateToStore),
          ),
        ],
      ),
    );
  }
}
