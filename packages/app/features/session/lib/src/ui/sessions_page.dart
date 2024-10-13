import 'package:app_cores_designsystem/ui.dart';
import 'package:app_cores_settings/ui.dart';
import 'package:app_features_session/l10n.dart';
import 'package:app_features_session/src/routing/router.dart';
import 'package:app_features_session/src/ui/session_item.dart';
import 'package:flutter/material.dart';

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
            actions: [
              IconButton(
                tooltip: l.bookmarked,
                onPressed: () async =>
                    const BookmarkedSessionsPageRoute().push(context),
                icon: const Icon(Icons.bookmarks_outlined),
              ),
              const SettingsButton(),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return SessionItem(
                  title: 'Example Super Session Title ~ Why we using Flutter?',
                  name: 'Name',
                  isDateVisible: true,
                  onTap: () async =>
                      const SessionPageRoute(sessionId: 'id').push(context),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
