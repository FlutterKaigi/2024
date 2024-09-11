import 'dart:ffi';

import 'package:app_cores_designsystem/ui.dart';
import 'package:app_cores_settings/ui.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:packages_app_features_session/l10n.dart';
import 'package:packages_app_features_session/src/ui/session_item.dart';

class SessionsPage extends StatelessWidget {
  const SessionsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l = L10nSession.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            leading: const Center(
              child: MainLogo(),
            ),
            title: Text(l.sessionPageTitle),
            actions: const [
              SettingsButton(),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return const SessionItem(
                  title: 'Example Super Session Title ~ Why we using Flutter?',
                  name: 'Name',
                  isDateVisible: true,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
