import 'dart:async';

import 'package:common_data/entry_log.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_reader/core/components/full_screen_loading.dart';
import 'package:ticket_reader/features/profile/data/profile_with_ticket_and_entry_log_provider.dart';

class NoEntryLogCard extends StatelessWidget {
  const NoEntryLogCard({
    required this.entryLog,
    required this.userId,
    required this.ticketId,
    super.key,
  });

  final EntryLog? entryLog;
  final String userId;
  final String ticketId;


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 8,
      ),
      child: Card(
        color: colorScheme.tertiaryContainer,
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        child: Consumer(
          builder: (context, ref, child) => InkWell(
            onTap: () async => _onCreateEntryLog(context, ref),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.check_circle_outline_rounded,
                    color: theme.colorScheme.onTertiaryContainer,
                    size: 28,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '入場を記録する',
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: theme.colorScheme.onTertiaryContainer,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _onCreateEntryLog(BuildContext context, WidgetRef ref) async {
    try {
      await FullScreenCircularProgressIndicator.showUntil(
        context,
        () async =>
            ref.read(entryLogRepositoryProvider).createEntryLog(userId: userId),
      );
      await HapticFeedback.heavyImpact();
      ref.invalidate(profileWithTicketAndEntryLogUserIdProvider(userId));
      ref.invalidate(profileWithTicketAndEntryLogTicketIdProvider(ticketId));
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('入場を記録しました'),
            duration: Duration(seconds: 1),
          ),
        );
      }
    } on Exception catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.toString())),
        );
      }
    }
  }
}
