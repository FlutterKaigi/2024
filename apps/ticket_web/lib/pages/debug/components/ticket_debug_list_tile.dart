import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/feature/ticket/data/ticket_notifier.dart';

class TicketDebugListTile extends ConsumerWidget {
  const TicketDebugListTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(ticketNotifierProvider);
    final colorSchema = Theme.of(context).colorScheme;

    return ListTile(
      title: const Text('Ticket'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(state.toString()),
          if (state case AsyncValue(:final value) when value != null) ...[
            const SizedBox(height: 8),
            FloatingActionButton.extended(
              backgroundColor: colorSchema.error,
              foregroundColor: colorSchema.onError,
              onPressed: () async => ref
                  .read(ticketNotifierProvider.notifier)
                  .deleteCurrentTicket(),
              label: const Text('Delete'),
              icon: const Icon(Icons.delete),
            ),
          ],
        ],
      ),
    );
  }
}
