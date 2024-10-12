import 'dart:async';

import 'package:collection/collection.dart';
import 'package:common_data/profile.dart';
import 'package:common_data/ticket.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/core/extension/is_mobile.dart';
import 'package:ticket_web/core/util/full_screen_loading.dart';
import 'package:ticket_web/feature/profile/data/profile_notifier.dart';
import 'package:ticket_web/feature/ticket/ui/ticket_card.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';
import 'package:ticket_web/pages/ticket/components/profile_edit_restriction.dart';
import 'package:ticket_web/pages/ticket/components/warning_for_personal_sponsor_card.dart';
import 'package:ticket_web/pages/ticket/components/warning_for_speaker_profile_card.dart';

class AboutProfileInformation extends HookConsumerWidget {
  const AboutProfileInformation({
    required this.ticket,
    required this.profile,
    super.key,
  });

  final Ticket ticket;
  final ProfileWithSns profile;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(
      () {
        unawaited(
          WidgetsBinding.instance.endOfFrame.then((_) async {
            if (context.mounted && profile.isAdult == null) {
              final i18n = Translations.of(context);

              final result = await showDialog<bool>(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(i18n.ticketPage.editFields.isAdult.title),
                    content: Text(
                      i18n.ticketPage.editFields.isAdult.description,
                    ),
                    actions: [
                      TextButton(
                        child: Text(i18n.ticketPage.editFields.isAdult.no),
                        onPressed: () => Navigator.of(context).pop(false),
                      ),
                      TextButton(
                        child: Text(i18n.ticketPage.editFields.isAdult.yes),
                        onPressed: () => Navigator.of(context).pop(true),
                      ),
                    ],
                  );
                },
              );
              if (context.mounted && result != null) {
                await FullScreenCircularProgressIndicator.showUntil(
                  context,
                  () async => ref
                      .read(profileNotifierProvider.notifier)
                      .updateProfileIsAdult(isAdult: result),
                );
              }
            }
          }),
        );
        return null;
      },
      [profile],
    );

    final i18n = Translations.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final isMobile = MediaQuery.sizeOf(context).isMobile;

    final isSpeaker = switch (ticket.type) {
      TicketType.regularSpeaker || TicketType.sponsorSpeaker => true,
      _ => false,
    };
    final isPersonalSponsor = ticket.type == TicketType.individualSponsor;

    return Card.outlined(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(isMobile ? 4 : 16),
        side: BorderSide(
          color: theme.colorScheme.surfaceDim,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(isMobile ? 8 : 16),
        child: IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.person,
                    color: theme.colorScheme.onSurface,
                  ),
                  const SizedBox(width: 8),
                  Flexible(
                    child: Text(
                      i18n.ticketPage.informationForProfileEdit.title,
                      style: (isMobile
                              ? textTheme.titleMedium
                              : textTheme.titleLarge)
                          ?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                i18n.ticketPage.informationForProfileEdit.description,
                style: (isMobile ? textTheme.bodySmall : textTheme.bodyMedium)
                    ?.copyWith(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
                ),
              ),
              const SizedBox(height: 8),
              ProfileEditRestriction(
                ticket: ticket,
              ),
              const SizedBox(height: 8),
              if (isSpeaker || isPersonalSponsor) const Divider(),
              if (isSpeaker)
                const Center(child: WarningForSpeakerProfileCard()),
              if (isPersonalSponsor)
                const Center(child: WarningForPersonalSponsorCard()),
              Center(
                child: _ProfileCard(
                  profile: profile,
                  ticket: ticket,
                ),
              ),
              const SizedBox(height: 8),
              Text(t.ticketPage.designMayBeChanged),
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

    final isSponsor = switch (ticket.type) {
      TicketType.individualSponsor ||
      TicketType.sponsorBooth ||
      TicketType.sponsorInvited ||
      TicketType.sponsorSpeaker =>
        true,
      TicketType.general || TicketType.regularSpeaker => false,
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
      profile: profile,
      sponsorImageUri: null, // TODO(YumNumm): スポンサー画像
      isSponsor: isSponsor,
      isSpeaker: isSpeaker,
      isAdult: profile.isAdult ?? false,
    );
  }
}
