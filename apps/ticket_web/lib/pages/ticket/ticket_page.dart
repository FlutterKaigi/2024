import 'package:common_data/profile.dart';
import 'package:common_data/ticket.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/core/components/error/error_card.dart';
import 'package:ticket_web/core/components/responsive_content_container.dart';
import 'package:ticket_web/core/components/site_scaffold.dart';
import 'package:ticket_web/feature/profile/data/profile_notifier.dart';
import 'package:ticket_web/feature/ticket/data/ticket_notifier.dart';
import 'package:ticket_web/pages/ticket/components/profile_edit_card.dart';
import 'package:ticket_web/pages/ticket/components/thank_you_for_purchase_ticket.dart';
import 'package:ticket_web/pages/ticket/components/warning_for_personal_sponsor_card.dart';
import 'package:ticket_web/pages/ticket/components/warning_for_speaker_profile_card.dart';

class TicketRoute extends GoRouteData {
  const TicketRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const TicketPage();
  }
}

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteScaffold.widget(
      body: const ResponsiveContentContainer(
        child: _Body(),
      ),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ticketState = ref.watch(ticketNotifierProvider);
    final profileState = ref.watch(profileNotifierProvider);

    return switch ((ticketState, profileState)) {
      (AsyncError(:final error), _) || (_, AsyncError(:final error)) => Center(
          child: ErrorCard(
            error: error,
          ),
        ),
      (
        AsyncData(value: final Ticket ticket),
        AsyncData(value: final ProfileWithSns profile)
      ) =>
        _BodyWithTicket(
          ticket: ticket,
          profile: profile,
        ),
      _ => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
    };
  }
}

class _BodyWithTicket extends ConsumerWidget {
  const _BodyWithTicket({
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
    final isPersonalSponsor = ticket.type == TicketType.individualSponsor;

    return Column(
      children: [
        ThankYouForPurchaseTicketCard(
          ticketType: ticket.type,
        ),
        if (isSpeaker) const WarningForSpeakerProfileCard(),
        if (isPersonalSponsor) const WarningForPersonalSponsorCard(),
        ProfileEditCard(
          ticket: ticket,
          profile: profile,
        ),
      ],
    );
  }
}
