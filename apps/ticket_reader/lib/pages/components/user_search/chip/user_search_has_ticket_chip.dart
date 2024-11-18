import 'package:flutter/material.dart';

class UserSearchHasTicketChip extends StatelessWidget {
  const UserSearchHasTicketChip({
    required this.hasTicket,
    required this.onChanged,
    super.key,
  });

  final bool? hasTicket;
  // ignore: avoid_positional_boolean_parameters
  final void Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return RawChip(
      label: Row(
        children: [
          if (hasTicket != null) ...[
            Icon(
              hasTicket! ? Icons.check : Icons.close,
              size: 18,
            ),
            const SizedBox(width: 4),
          ],
          const Text('チケット所持'),
        ],
      ),
      selected: hasTicket != null,
      showCheckmark: false,
      onSelected: (selected) async {
        await _showFilterModal(context);
      },
      labelStyle: hasTicket != null
          ? TextStyle(
              color: theme.colorScheme.onSecondaryContainer,
            )
          : null,
      backgroundColor: hasTicket != null
          ? theme.colorScheme.secondaryContainer
          : theme.colorScheme.surface,
      selectedColor: theme.colorScheme.secondaryContainer,
    );
  }

  Future<void> _showFilterModal(BuildContext context) async {
    final result = await showModalBottomSheet<_FilterValue?>(
      context: context,
      builder: (context) => _FilterModal(
        currentHasTicket: hasTicket,
      ),
    );
    if (result != null) {
      onChanged(result.hasTicket);
    }
  }
}

class _FilterModal extends StatelessWidget {
  const _FilterModal({
    required this.currentHasTicket,
  });

  final bool? currentHasTicket;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              width: 36,
              height: 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: theme.colorScheme.onSurface,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'チケット所持状態',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          RadioListTile<bool?>(
            title: const Text('チケットあり'),
            value: true,
            groupValue: currentHasTicket,
            onChanged: (value) =>
                Navigator.of(context).pop(_FilterValue(hasTicket: value)),
          ),
          RadioListTile<bool?>(
            title: const Text('チケットなし'),
            value: false,
            groupValue: currentHasTicket,
            onChanged: (value) =>
                Navigator.of(context).pop(_FilterValue(hasTicket: value)),
          ),
          RadioListTile<bool?>(
            title: const Text('フィルターしない'),
            value: null,
            groupValue: currentHasTicket,
            onChanged: (value) =>
                Navigator.of(context).pop(_FilterValue(hasTicket: value)),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('キャンセル'),
              ),
              const SizedBox(width: 8),
            ],
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

class _FilterValue {
  const _FilterValue({
    required this.hasTicket,
  });

  final bool? hasTicket;
}
