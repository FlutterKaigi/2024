import 'package:common_data/session.dart';
import 'package:conference_2024_website/feature/session/data/sessions_notifier.dart';
import 'package:conference_2024_website/feature/session/ui/components/session_table_grid/session_grid.dart';
import 'package:conference_2024_website/feature/session/ui/components/session_table_header.dart';
import 'package:conference_2024_website/ui/components/error_card.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SessionTable extends HookConsumerWidget {
  const SessionTable({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDate = useState(EventDate.day1);
    final state = ref.watch(sessionsByDateProvider(selectedDate.value));

    return Column(
      children: [
        _DateSelector(
          selectedDate: selectedDate.value,
          onDateSelected: (date) {
            selectedDate.value = date;
          },
        ),
        const Gap(16),
        switch (state) {
          AsyncData(:final value) => _Body(
              sessionVenues: value,
              selectedDate: selectedDate.value,
            ),
          AsyncError(:final error) => Center(
              child: ErrorCard(
                error: error,
                onRetry: () =>
                    ref.invalidate(sessionsByDateProvider(selectedDate.value)),
              ),
            ),
          _ => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
        },
      ],
    );
  }
}

class _DateSelector extends StatelessWidget {
  const _DateSelector({
    required this.selectedDate,
    required this.onDateSelected,
  });

  final EventDate selectedDate;
  final void Function(EventDate) onDateSelected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;

    return SegmentedButton<EventDate>(
      style: SegmentedButton.styleFrom(
        padding: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: textTheme.availableFonts.notoSansJp.medium.copyWith(
          color: theme.colorScheme.onSurface,
          fontSize: 18,
        ),
        backgroundColor: theme.colorScheme.surface,
      ),
      selectedIcon: const Icon(Icons.check),
      segments: const [
        ButtonSegment(
          value: EventDate.day1,
          label: Text('Day 1 (11/21)'),
        ),
        ButtonSegment(
          value: EventDate.day2,
          label: Text('Day 2 (11/22)'),
        ),
      ],
      selected: {selectedDate},
      onSelectionChanged: (dates) {
        if (dates.isEmpty) {
          return;
        }
        onDateSelected(dates.first);
      },
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.sessionVenues,
    required this.selectedDate,
  });

  final List<SessionVenuesWithSessionsV2> sessionVenues;
  final EventDate selectedDate;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SessionTableHeader(sessionVenues: sessionVenues),
        const Gap(16),
        SessionGrid(
          sessionVenues: sessionVenues,
          selectedDate: selectedDate,
        ),
      ],
    );
  }
}
