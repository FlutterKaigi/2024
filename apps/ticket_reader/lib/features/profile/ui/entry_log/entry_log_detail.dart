import 'dart:async';

import 'package:common_data/entry_log.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_reader/core/components/full_screen_loading.dart';
import 'package:ticket_reader/features/profile/data/profile_with_ticket_and_entry_log_provider.dart';
import 'package:ticket_reader/features/profile/ui/user_card.dart';

class EntryLogDetail extends StatelessWidget {
  const EntryLogDetail({
    required this.entryLog,
    required this.userId,
    super.key,
  });

  final EntryLog entryLog;
  final String userId;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        // Entry Log ID
        Row(
          children: [
            const Text('Entry Log ID: '),
            Expanded(
              child: CopyableText(
                text: entryLog.id,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        // 入場日時
        Row(
          children: [
            const Text('入場日時: '),
            Text(
              _formatDateTime(entryLog.createdAt),
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        // 入場取り消しボタン
        _DeleteEntryLogButton(userId: userId),
      ],
    );
  }

  String _formatDateTime(DateTime dateTime) {
    final local = dateTime.toLocal();
    return '${local.year}/${local.month}/${local.day} '
        '${local.hour.toString().padLeft(2, '0')}:'
        '${local.minute.toString().padLeft(2, '0')}:'
        '${local.second.toString().padLeft(2, '0')}';
  }
}

class _DeleteEntryLogButton extends ConsumerWidget {
  const _DeleteEntryLogButton({
    required this.userId,
  });

  final String userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return FilledButton.tonalIcon(
      onPressed: () async => _onDeletePressed(context, ref),
      style: FilledButton.styleFrom(
        backgroundColor: theme.colorScheme.errorContainer,
        foregroundColor: theme.colorScheme.onErrorContainer,
        iconColor: theme.colorScheme.onErrorContainer,
      ),
      icon: const Icon(Icons.delete_forever),
      label: const Text('入場記録を取り消す'),
    );
  }

  Future<void> _onDeletePressed(BuildContext context, WidgetRef ref) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('入場記録の取り消し'),
        content: const Text('この操作は取り消せません。\n本当に入場記録を取り消しますか？'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('キャンセル'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(
              '取り消す',
              style: TextStyle(
                color: Theme.of(context).colorScheme.error,
              ),
            ),
          ),
        ],
      ),
    );
    if (confirmed != true || !context.mounted) {
      return;
    }

    try {
      await FullScreenCircularProgressIndicator.showUntil(
        context,
        () async =>
            ref.read(entryLogRepositoryProvider).deleteEntryLog(userId: userId),
      );
      ref.invalidate(profileWithTicketAndEntryLogUserIdProvider(userId));
      if (context.mounted) {
        unawaited(HapticFeedback.lightImpact());
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('入場記録を取り消しました')),
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
