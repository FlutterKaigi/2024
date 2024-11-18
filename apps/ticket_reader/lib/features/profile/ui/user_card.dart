import 'package:common_data/ticket.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_reader/core/components/full_screen_loading.dart';
import 'package:ticket_reader/features/profile/data/profile_with_ticket_and_entry_log_provider.dart';
import 'package:ticket_reader/features/profile/ui/entry_log_view.dart';
import 'package:ticket_reader/features/profile/ui/profile_avatar.dart';

class UserCard extends ConsumerWidget {
  const UserCard({
    this.userId,
    this.ticketId,
    this.showAsCard = false,
    super.key,
  });

  factory UserCard.asCard({
    String? userId,
    String? ticketId,
  }) =>
      UserCard(
        userId: userId,
        ticketId: ticketId,
        showAsCard: true,
      );

  /// Modalで表示します
  static Future<void> show(
    BuildContext context, {
    String? userId,
    String? ticketId,
  }) async =>
      showBottomSheet(
        context: context,
        builder: (context) => DraggableScrollableSheet(
          initialChildSize: 0.9,
          minChildSize: 0.9,
          expand: false,
          builder: (context, controller) {
            final bottomPadding = MediaQuery.paddingOf(context).bottom;
            final theme = Theme.of(context);
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: SizedBox(
                    width: 36,
                    height: 4,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: UserCard(
                    userId: userId,
                    ticketId: ticketId,
                  ),
                ),
                SizedBox(height: bottomPadding),
              ],
            );
          },
        ),
      );

  final String? userId;
  final String? ticketId;
  final bool showAsCard;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(
      userId != null || ticketId != null,
      'userId or ticketId is required',
    );

    final profileState = ref.watch(
      userId != null
          ? profileWithTicketAndEntryLogUserIdProvider(userId!)
          : profileWithTicketAndEntryLogTicketIdProvider(ticketId!),
    );

    final profile = profileState.valueOrNull;

    if (profileState is AsyncLoading) {
      return const FullScreenCircularProgressIndicator();
    }
    if (profile == null) {
      return const SizedBox.shrink();
    }

    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final inner = Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: ProfileAvatar(
              profile: profile.profile,
              size: 48,
            ),
            title: Text(
              profile.profile.name,
            ),
            subtitle: CopyableText(
              text: profile.id,
            ),
          ),
          const SizedBox(height: 4),
          if (profile.ticket != null) ...[
            Divider(
              color: colorScheme.onSurfaceVariant,
            ),
            _TicketView(ticket: profile.ticket!),
          ],
          Divider(
            color: colorScheme.onSurfaceVariant,
          ),
          EntryLogView(
            entryLog: profile.entryLog,
            userId: profile.id,
          ),
        ],
      ),
    );

    if (showAsCard) {
      return Card(
        margin: EdgeInsets.zero,
        color: colorScheme.surfaceContainer,
        child: inner,
      );
    }
    return inner;
  }
}

class _TicketView extends StatelessWidget {
  const _TicketView({
    required this.ticket,
  });

  final Ticket ticket;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return ListTile(
      title: Text(
        'チケット',
        style: theme.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Ticket ID
          Row(
            children: [
              const Text('Ticket ID: '),
              Expanded(
                child: CopyableText(
                  text: ticket.id,
                ),
              ),
            ],
          ),
          // 区画ID
          Row(
            children: [
              const Text('区画ID: '),
              Text(
                ticket.sectionId,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          // スポンサーID
          if (ticket.sponsorId != null) ...[
            const SizedBox(height: 4),
            Row(
              children: [
                const Text('スポンサーID: '),
                Expanded(
                  child: Text(
                    ticket.sponsorId.toString(),
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                    ),
                  ),
                ),
              ],
            ),
          ],
          // Session ID
          if (ticket.sessionId != null) ...[
            const SizedBox(height: 4),
            Row(
              children: [
                const Text('Session ID: '),
                Text(
                  ticket.sessionId.toString(),
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                  ),
                ),
              ],
            ),
          ],
          // Ticket Type
          const SizedBox(height: 4),
          Chip(
            label: Text(
              ticket.type.name,
              style: theme.textTheme.bodySmall?.copyWith(
                color: ticket.type.foregroundColor(colorScheme),
              ),
            ),
            backgroundColor: ticket.type.backgroundColor(colorScheme),
          ),
        ],
      ),
    );
  }
}

class CopyableText extends StatelessWidget {
  const CopyableText({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Text(
            text,
            style: GoogleFonts.jetBrainsMono(),
          ),
        ),
        const SizedBox(width: 4),
        IconButton(
          onPressed: () async {
            await Clipboard.setData(
              ClipboardData(text: text),
            );
            await HapticFeedback.lightImpact();
            if (context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Copied to clipboard: $text'),
                ),
              );
            }
          },
          icon: const Icon(Icons.copy),
        ),
      ],
    );
  }
}

extension on TicketType {
  Color backgroundColor(ColorScheme colorScheme) => switch (this) {
        TicketType.general => colorScheme.primaryContainer,
        TicketType.sponsorBooth => colorScheme.secondaryContainer,
        TicketType.sponsorInvited => colorScheme.secondaryContainer,
        TicketType.individualSponsor => colorScheme.secondaryContainer,
        TicketType.regularSpeaker => colorScheme.tertiaryContainer,
        TicketType.sponsorSpeaker => colorScheme.tertiaryContainer,
      };

  Color foregroundColor(ColorScheme colorScheme) => switch (this) {
        TicketType.general => colorScheme.onPrimaryContainer,
        TicketType.sponsorBooth => colorScheme.onSecondaryContainer,
        TicketType.sponsorInvited => colorScheme.onSecondaryContainer,
        TicketType.individualSponsor => colorScheme.onSecondaryContainer,
        TicketType.regularSpeaker => colorScheme.onTertiaryContainer,
        TicketType.sponsorSpeaker => colorScheme.onTertiaryContainer,
      };

  String get name => switch (this) {
        TicketType.general => '一般',
        TicketType.sponsorBooth => 'スポンサーブース',
        TicketType.sponsorInvited => 'スポンサー招待',
        TicketType.individualSponsor => '個別スポンサー',
        TicketType.regularSpeaker => '一般セッション登壇者',
        TicketType.sponsorSpeaker => 'スポンサーセッション登壇者',
      };
}
