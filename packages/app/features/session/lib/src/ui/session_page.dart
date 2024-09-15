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
          const SliverAppBar.large(
            title: Text('Example Super Session Title ~ Why we using Flutter?'),
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
              ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                leading: const BorderedIconImage(size: 56),
                title: const Text('John Doe'),
                onTap: () {},
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
            ],
          ),
        ],
      ),
    );
  }
}
