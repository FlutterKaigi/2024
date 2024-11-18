import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserSearchHasEntryLogChip extends StatelessWidget {
  const UserSearchHasEntryLogChip({
    required this.hasEntryLog,
    required this.onChanged,
    super.key,
  });

  final bool? hasEntryLog;
  // ignore: avoid_positional_boolean_parameters
  final void Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return RawChip(
      label: Row(
        children: [
          if (hasEntryLog != null) ...[
            Icon(
              hasEntryLog! ? Icons.check : Icons.close,
              size: 18,
            ),
            const SizedBox(width: 4),
          ],
          Text(
            '入場履歴',
            style: GoogleFonts.jetBrainsMono(),
          ),
        ],
      ),
      selected: hasEntryLog != null,
      showCheckmark: false,
      onSelected: (selected) async {
        await _showFilterModal(context);
      },
      labelStyle: hasEntryLog != null
          ? TextStyle(
              color: theme.colorScheme.onSecondaryContainer,
              fontWeight: FontWeight.bold,
            )
          : null,
      backgroundColor: hasEntryLog != null
          ? theme.colorScheme.secondaryContainer
          : theme.colorScheme.surface,
      selectedColor: theme.colorScheme.secondaryContainer,
    );
  }

  Future<void> _showFilterModal(BuildContext context) async {
    final result = await showModalBottomSheet<_FilterValue?>(
      context: context,
      builder: (context) => _FilterModal(
        currentHasEntryLog: hasEntryLog,
      ),
    );
    if (result != null) {
      onChanged(result.hasEntryLog);
    }
  }
}

class _FilterModal extends StatelessWidget {
  const _FilterModal({
    required this.currentHasEntryLog,
  });

  final bool? currentHasEntryLog;

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
              '入場履歴',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          RadioListTile<bool?>(
            title: const Text('入場済み'),
            value: true,
            groupValue: currentHasEntryLog,
            onChanged: (value) =>
                Navigator.of(context).pop(_FilterValue(hasEntryLog: value)),
          ),
          RadioListTile<bool?>(
            title: const Text('未入場'),
            value: false,
            groupValue: currentHasEntryLog,
            onChanged: (value) =>
                Navigator.of(context).pop(_FilterValue(hasEntryLog: value)),
          ),
          RadioListTile<bool?>(
            title: const Text('フィルターしない'),
            value: null,
            groupValue: currentHasEntryLog,
            onChanged: (value) =>
                Navigator.of(context).pop(_FilterValue(hasEntryLog: value)),
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
    required this.hasEntryLog,
  });

  final bool? hasEntryLog;
}
