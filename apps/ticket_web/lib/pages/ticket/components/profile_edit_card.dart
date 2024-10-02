import 'package:collection/collection.dart';
import 'package:common_data/profile.dart';
import 'package:common_data/ticket.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/core/extension/is_mobile.dart';
import 'package:ticket_web/feature/ticket/ui/ticket_card.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class ProfileEditCard extends StatelessWidget {
  const ProfileEditCard({
    required this.ticket,
    required this.profile,
    super.key,
  });

  final Ticket ticket;
  final ProfileWithSns profile;

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final isMobile = MediaQuery.sizeOf(context).isMobile;

    return Card.outlined(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: theme.colorScheme.secondaryContainer,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                i18n.ticketPage.informationForProfileEdit.title,
                style: (isMobile ? textTheme.titleMedium : textTheme.titleLarge)
                    ?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.onTertiaryContainer,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                i18n.ticketPage.informationForProfileEdit.description,
                style: (isMobile ? textTheme.bodySmall : textTheme.bodyMedium)
                    ?.copyWith(
                  color: theme.colorScheme.onTertiaryContainer
                      .withValues(alpha: 0.7),
                ),
              ),
              const SizedBox(height: 8),
              const Text('TODO: XX/XX 以降は編集不可になりますみたいな文'),
              const SizedBox(height: 8),
              Center(
                child: _ProfileCard(
                  profile: profile,
                  ticket: ticket,
                ),
              ),
              const SizedBox(height: 8),
              const Text('TODO: デザインは変わるかもです〜 みたいな文'),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProfileCard extends ConsumerWidget {
  const _ProfileCard({
    required this.ticket,
    required this.profile,
  });

  final Ticket ticket;
  final ProfileWithSns profile;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSpeaker = switch (ticket.type) {
      TicketType.regularSpeaker || TicketType.sponsorSpeaker => true,
      _ => false,
    };

    return TicketCard.editable(
      name: profile.name,
      description: profile.comment,
      xAccount: profile.snsAccounts
          .firstWhereOrNull((sns) => sns.type == SnsType.x)
          ?.uri
          .path
          .split('/')
          .last,
      avatarImageUri: profile.userAvatarUri ?? profile.googleAvatarUri,
      sponsorImageUri: null, // TODO(YumNumm): スポンサー画像
      isSponsor: switch (ticket.type) {
        TicketType.individualSponsor ||
        TicketType.sponsorBooth ||
        TicketType.sponsorInvited ||
        TicketType.sponsorInvited =>
          true,
        _ => false,
      },
      isSpeaker: isSpeaker,
      isAdult: profile.isAdult,
    );
  }
}
