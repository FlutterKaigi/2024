import 'package:collection/collection.dart';
import 'package:common_data/profile.dart';
import 'package:common_data/ticket.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/core/components/error/error_card.dart';
import 'package:ticket_web/core/components/site_scaffold.dart';
import 'package:ticket_web/feature/profile/data/profile_notifier.dart';
import 'package:ticket_web/feature/ticket/data/ticket_notifier.dart';
import 'package:ticket_web/feature/ticket/ui/ticket_card.dart';

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
      body: const _Body(),
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
        TicketCard(
          name: profile.name,
          description: profile.comment,
          xUri: profile.snsAccounts
              .firstWhereOrNull((sns) => sns.type == SnsType.x)
              ?.uri,
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
          isSpeaker: switch (ticket.type) {
            TicketType.regularSpeaker || TicketType.sponsorSpeaker => true,
            _ => false,
          },
          isAdult: profile.isAdult,
        ),
      _ => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
    };
  }
}
