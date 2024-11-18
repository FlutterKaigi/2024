import 'package:common_data/entry_log.dart';
import 'package:flutter/material.dart';
import 'package:ticket_reader/features/profile/ui/entry_log/entry_status_chip.dart';
import 'package:ticket_reader/features/profile/ui/entry_log/entry_log_detail.dart';
import 'package:ticket_reader/features/profile/ui/entry_log/no_entry_log_card.dart';

class EntryLogView extends StatelessWidget {
  const EntryLogView({
    required this.entryLog,
    required this.userId,
    super.key,
  });

  final EntryLog? entryLog;
  final String userId;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      title: Row(
        children: [
          Text(
            '入場履歴',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 8),
          EntryStatusChip(hasEntry: entryLog != null),
        ],
      ),
      subtitle: entryLog != null
          ? EntryLogDetail(
              entryLog: entryLog!,
              userId: userId,
            )
          : NoEntryLogCard(
              entryLog: entryLog,
              userId: userId,
            ),
    );
  }
}
