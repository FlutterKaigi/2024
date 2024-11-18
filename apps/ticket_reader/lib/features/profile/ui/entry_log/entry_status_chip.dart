import 'package:flutter/material.dart';

class EntryStatusChip extends StatelessWidget {
  const EntryStatusChip({
    required this.hasEntry,
    super.key,
  });

  final bool hasEntry;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: hasEntry
            ? colorScheme.primaryContainer
            : colorScheme.errorContainer,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            hasEntry ? Icons.check_circle : Icons.warning_amber_rounded,
            size: 16,
            color: hasEntry ? colorScheme.primary : colorScheme.error,
          ),
          const SizedBox(width: 4),
          Text(
            hasEntry ? '入場済み' : '未入場',
            style: theme.textTheme.labelMedium?.copyWith(
              color: hasEntry ? colorScheme.primary : colorScheme.error,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
