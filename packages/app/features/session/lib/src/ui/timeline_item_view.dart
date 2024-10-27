import 'package:app_features_session/src/providers/session_timeline.dart';
import 'package:app_features_session/src/ui/session_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

final _timeFormatter = DateFormat.Hm();

class TimelineItemView extends StatelessWidget {
  const TimelineItemView({
    required this.item,
    required this.isDateVisible,
    required this.onTap,
    super.key,
  });

  final TimelineItem item;
  final bool isDateVisible;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 16,
        left: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isDateVisible) ...[
            const Gap(8),
            Text(
              _timeFormatter.format(item.startsAt),
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
          Container(
            margin: const EdgeInsets.only(
              left: 16,
            ),
            padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
            ),
            child: item.map(
              event: (event) => const SizedBox.shrink(),
              session: (session) => SessionCard(item: session, onTap: onTap),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<TimelineItem>('item', item));
    properties.add(DiagnosticsProperty<bool>('isDateVisible', isDateVisible));
    properties.add(ObjectFlagProperty<VoidCallback>.has('onTap', onTap));
  }
}
