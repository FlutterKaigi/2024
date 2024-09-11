import 'dart:ffi';

import 'package:app_cores_designsystem/ui.dart';
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
      appBar: AppBar(
        leading: const Center(
          child: MainLogo(),
        ),
        leadingWidth: 48,
        titleSpacing: 4,
        centerTitle: false,
        title: Text(l.sessionPageTitle),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '11:00',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const Spacer(),
                        ],
                      ),
                      const Gap(8),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 16,
                        ),
                        padding: const EdgeInsets.only(
                          left: 16,
                          bottom: 4,
                        ),
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(
                              width: 2,
                              color:
                                  Theme.of(context).colorScheme.outlineVariant,
                            ),
                          ),
                        ),
                        child: const SessionItem(
                          title:
                              'Example Super Session Title ~ Why we using Flutter?',
                          name: 'Test',
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
