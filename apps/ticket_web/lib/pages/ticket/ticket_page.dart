import 'package:common_data/profile.dart';
import 'package:common_data/ticket.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/core/components/error/error_card.dart';
import 'package:ticket_web/core/components/language_selector.dart';
import 'package:ticket_web/core/components/responsive_content_container.dart';
import 'package:ticket_web/core/components/site_scaffold.dart';
import 'package:ticket_web/core/router/router.dart';
import 'package:ticket_web/feature/profile/data/profile_notifier.dart';
import 'package:ticket_web/feature/profile/ui/app_bar_avatar.dart';
import 'package:ticket_web/feature/ticket/data/ticket_notifier.dart';
import 'package:ticket_web/pages/ticket/components/about_profile_information_card.dart';
import 'package:ticket_web/pages/ticket/components/thank_you_for_purchase_ticket.dart';
import 'package:ticket_web/pages/ticket/components/ticket_qr_code_card.dart';

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
      actions: const [
        LanguageSelector(),
        AppBarAvatar(),
        SizedBox(width: 8),
      ],
      onHeaderTitleTap: () => HomeRoute().go(context),
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
    return Column(
      children: [
        ThankYouForPurchaseTicketCard(
          ticketType: ticket.type,
        ),
        const SizedBox(height: 16),
        TicketQrCodeCard(
          ticket: ticket,
        ),
        const SizedBox(height: 16),
        AboutProfileInformation(
          ticket: ticket,
          profile: profile,
        ),
        const SizedBox(height: 48),
      ],
    );
  }
}
