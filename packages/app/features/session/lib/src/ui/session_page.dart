import 'dart:async';

import 'package:app_cores_core/util.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:packages_app_features_session/l10n.dart';
import 'package:packages_app_features_session/src/ui/bordered_icon_image.dart';
import 'package:packages_app_features_session/src/ui/session_room_chip.dart';

class SessionPage extends StatelessWidget {
  const SessionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l = L10nSession.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: const Text(
              'Example Super Session Title ~ Why we using Flutter?',
            ),
            actions: [
              IconButton(
                tooltip: l.shareOnX,
                padding: const EdgeInsets.all(12),
                onPressed: () {
                  // TODO: データをつなぎこんだら共有機能を実装する
                },
                icon: const Icon(Icons.share),
              ),
            ],
          ),
          SliverList.list(
            children: [
              const Row(
                children: [
                  Gap(16),
                  SessionRoomChip(),
                ],
              ),
              const Gap(8),
              Tooltip(
                message: l.openSpeakersLink,
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 16,
                  ),
                  leading: const BorderedIconImage(size: 56),
                  title: const Text('John Doe'),
                  onTap: () {
                    final url = Uri.parse('https://twitter.com/FlutterKaigi');
                    unawaited(launchInExternalApp(url));
                  },
                ),
              ),
              const Gap(8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'FlutterKaigi is Lorem Ipsum is simply dummy text of the '
                  'printing and typesetting industry. '
                  'Lorem Ipsum has been the industry',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              const Gap(8),
              // TODO: データをつなぎこんだら日時を下記の形式にフォーマットする (#231)
              Tooltip(
                message: l.registerToCalendar,
                child: ListTile(
                  title: Text(
                    'Day1 14:00~15:00',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  leading: const Icon(Icons.event_outlined),
                  onTap: () {
                    // TODO: 該当の日時でカレンダーを開く (#24)
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
