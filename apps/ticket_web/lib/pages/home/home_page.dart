import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/core/components/error/error_card.dart';
import 'package:ticket_web/core/components/language_selector.dart';
import 'package:ticket_web/core/components/site_scaffold.dart';
import 'package:ticket_web/core/provider/environment.dart';
import 'package:ticket_web/core/router/router.dart';
import 'package:ticket_web/feature/profile/ui/app_bar_avatar.dart';
import 'package:ticket_web/feature/ticket/data/ticket_notifier.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';
import 'package:ticket_web/pages/home/components/already_purchased_card.dart';
import 'package:ticket_web/pages/home/components/auth_state_card.dart';
import 'package:ticket_web/pages/home/components/ticket_cards.dart';
import 'package:ticket_web/pages/home/components/ticket_cards/information_for_students.dart';
import 'package:ticket_web/pages/home/components/ticket_will_be_on_sale_card.dart';
import 'package:ticket_web/pages/home/components/title_and_logo.dart';
import 'package:ticket_web/pages/home/components/transit_to_home_page.dart';
import 'package:ticket_web/pages/ticket/ticket_page.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ticketState = ref.watch(ticketNotifierProvider);
    final i18n = Translations.of(context);

    // 2024/10/07 10:00 JST から販売開始
    final isTicketOnSale = DateTime.now()
            .toUtc()
            .add(const Duration(hours: 9))
            .isAfter(DateTime.utc(2024, 10, 7, 10)) ||
        ref.watch(environmentProvider).environmentType !=
            EnvironmentType.production;

    return SiteScaffold.widget(
      actions: const [
        LanguageSelector(),
        AppBarAvatar(),
        SizedBox(width: 8),
      ],
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: TitleAndLogo(),
          ),
          const TransitToHomePage(),
          const SizedBox(height: 48),
          if (isTicketOnSale)
            const AuthStateCard()
          else
            const TicketWillBeOnSaleCard(),
          ticketState.when(
            data: (ticket) {
              if (ticket != null) {
                return AlreadyPurchasedCard(
                  onTicketPagePressed: () async =>
                      const TicketRoute().push<void>(context),
                );
              } else {
                return const TicketCards();
              }
            },
            loading: () => const CircularProgressIndicator.adaptive(),
            error: (error, __) => ErrorCard(
              error: error,
              title: i18n.homePage.tickets.alreadyPurchasedCard.verifyError,
            ),
          ),
          const SizedBox(height: 8),
          const InformationForStudents(),
          const SizedBox(height: 48),
        ],
      ),
    );
  }
}
