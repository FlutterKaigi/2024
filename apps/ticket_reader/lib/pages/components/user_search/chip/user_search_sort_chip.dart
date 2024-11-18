import 'dart:io';

import 'package:common_data/entry_log.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserSearchSortChip extends StatelessWidget {
  const UserSearchSortChip({
    required this.type,
    required this.order,
    required this.onChanged,
    super.key,
  });

  final ProfileWithTicketAndEntryLogSort type;
  final SortOrder order;
  final void Function(
    ProfileWithTicketAndEntryLogSort sort,
    SortOrder order,
  ) onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return FilterChip(
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(type.label),
          const SizedBox(width: 4),
          Icon(
            order == SortOrder.asc ? Icons.arrow_upward : Icons.arrow_downward,
            size: 16,
          ),
        ],
      ),
      selected: true,
      showCheckmark: false,
      onSelected: (_) async => _showSortModal(context),
      labelStyle: TextStyle(
        color: theme.colorScheme.onSecondaryContainer,
      ),
      backgroundColor: theme.colorScheme.secondaryContainer,
      selectedColor: theme.colorScheme.secondaryContainer,
    );
  }

  Future<void> _showSortModal(BuildContext context) async {
    final result = await showModalBottomSheet<
        (ProfileWithTicketAndEntryLogSort, SortOrder)?>(
      context: context,
      builder: (context) => _SortModal(
        currentSortType: type,
        currentOrder: order,
      ),
    );
    if (result != null) {
      onChanged(result.$1, result.$2);
    }
  }
}

class _SortModal extends HookConsumerWidget {
  const _SortModal({
    required this.currentSortType,
    required this.currentOrder,
  });

  final ProfileWithTicketAndEntryLogSort currentSortType;
  final SortOrder currentOrder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final type = useState(currentSortType);
    final order = useState(currentOrder);

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
              '並び替え',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: _SegmentedControl(
              type: type.value,
              onChanged: (v) => type.value = v,
            ),
          ),
          SwitchListTile.adaptive(
            title: const Text('昇順・降順'),
            subtitle: Text(order.value.label),
            value: order.value == SortOrder.asc,
            onChanged: (v) => order.value = v ? SortOrder.asc : SortOrder.desc,
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('キャンセル'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(
                  (type.value, order.value),
                ),
                child: const Text('完了'),
              ),
            ],
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

class _SegmentedControl extends StatelessWidget {
  const _SegmentedControl({
    required this.type,
    required this.onChanged,
  });

  final ProfileWithTicketAndEntryLogSort type;
  final void Function(ProfileWithTicketAndEntryLogSort) onChanged;

  @override
  Widget build(BuildContext context) {
    if (!kIsWeb && (Platform.isIOS || Platform.isMacOS)) {
      return CupertinoSlidingSegmentedControl<ProfileWithTicketAndEntryLogSort>(
        children: {
          for (final e in ProfileWithTicketAndEntryLogSort.values)
            e: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Text(e.label),
            ),
        },
        groupValue: type,
        onValueChanged: (v) {
          if (v != null) {
            onChanged(v);
          }
        },
      );
    }
    return SegmentedButton<ProfileWithTicketAndEntryLogSort>(
      selected: {type},
      onSelectionChanged: (v) => onChanged(v.first),
      segments: [
        for (final e in ProfileWithTicketAndEntryLogSort.values)
          ButtonSegment(
            value: e,
            label: Text(e.label),
          ),
      ],
    );
  }
}

extension on ProfileWithTicketAndEntryLogSort {
  String get label => switch (this) {
        ProfileWithTicketAndEntryLogSort.id => 'ID',
        ProfileWithTicketAndEntryLogSort.email => 'メールアドレス',
        ProfileWithTicketAndEntryLogSort.createdAt => '登録日時',
        ProfileWithTicketAndEntryLogSort.ticketType => 'チケット種別',
        ProfileWithTicketAndEntryLogSort.entryLog => '入場履歴',
      };
}

extension on SortOrder {
  String get label => switch (this) {
        SortOrder.asc => '昇順',
        SortOrder.desc => '降順',
      };
}
