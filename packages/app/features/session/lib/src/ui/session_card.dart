import 'package:app_features_session/src/data/model/timeline_item.dart';
import 'package:app_features_session/src/data/providers/bookmarked_sessions.dart';
import 'package:app_features_session/src/ui/session_room_chip.dart';
import 'package:app_features_session/src/ui/session_speaker_icon.dart';
import 'package:app_features_session/src/ui/session_type_chip.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SessionCard extends ConsumerWidget {
  const SessionCard({
    required this.item,
    required this.onTap,
    super.key,
  });

  final TimelineItemSession item;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final isBookmarked = ref.watch(isBookmarkedProvider(sessionId: item.id));

    return Card(
      elevation: 0,
      color: theme.colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: theme.colorScheme.outline,
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          ListTile(
            onTap: onTap,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            title: Text(
              item.title,
              style: theme.textTheme.titleMedium,
            ),
            subtitle: Column(
              children: [
                const Gap(8),
                if (item.speakers.isNotEmpty)
                  Row(
                    children: [
                      SessionSpeakerIcon(
                        profile: item.speakers.first,
                        size: 40,
                      ),
                      const Gap(8),
                      Text(
                        item.speakers.first.name,
                        style: theme.textTheme.labelMedium,
                      ),
                    ],
                  ),
                const Gap(8),
                Row(
                  children: [
                    SessionRoomChip(
                      venue: item.venue,
                    ),
                    const Gap(8),
                    SessionTypeChip(
                      session: item,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: IconButton(
              padding: const EdgeInsets.all(12),
              icon: isBookmarked
                  ? const Icon(Icons.bookmark)
                  : const Icon(Icons.bookmark_outline),
              onPressed: () {
                if (isBookmarked) {
                  ref
                      .read(bookmarkedSessionsProvider.notifier)
                      .remove(sessionId: item.id);
                } else {
                  ref
                      .read(bookmarkedSessionsProvider.notifier)
                      .save(sessionId: item.id);
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<TimelineItemSession>('item', item));
    properties.add(ObjectFlagProperty<VoidCallback?>.has('onTap', onTap));
  }
}
