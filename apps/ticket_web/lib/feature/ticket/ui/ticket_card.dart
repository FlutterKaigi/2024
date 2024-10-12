import 'package:common_data/profile.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/feature/ticket/ui/components/profile_avatar.dart';
import 'package:ticket_web/feature/ticket/ui/components/ticket_card_app_bar.dart';
import 'package:ticket_web/feature/ticket/ui/components/ticket_card_x_account.dart';
import 'package:ticket_web/feature/ticket/ui/components/ticket_comment_card.dart';
import 'package:ticket_web/feature/ticket/ui/components/ticket_is_adult_card.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class TicketCard extends ConsumerWidget {
  const TicketCard({
    required this.name,
    required this.description,
    required this.xAccount,
    required this.profile,
    required this.sponsorImageUri,
    required this.isSponsor,
    required this.isSpeaker,
    required this.isAdult,
    this.isEditable = false,
    super.key,
  });

  factory TicketCard.viewOnly({
    required String name,
    required String description,
    required String? xAccount,
    required ProfileWithSns profile,
    required Uri? sponsorImageUri,
    required bool isSponsor,
    required bool isSpeaker,
    required bool isAdult,
  }) {
    return TicketCard(
      name: name,
      description: description,
      xAccount: xAccount,
      profile: profile,
      sponsorImageUri: sponsorImageUri,
      isSponsor: isSponsor,
      isSpeaker: isSpeaker,
      isAdult: isAdult,
    );
  }

  factory TicketCard.editable({
    required String name,
    required String description,
    required String? xAccount,
    required ProfileWithSns profile,
    required Uri? sponsorImageUri,
    required bool isSponsor,
    required bool isSpeaker,
    required bool isAdult,
  }) {
    return TicketCard(
      name: name,
      description: description,
      xAccount: xAccount,
      profile: profile,
      sponsorImageUri: sponsorImageUri,
      isSponsor: isSponsor,
      isSpeaker: isSpeaker,
      isAdult: isAdult,
      isEditable: true,
    );
  }

  final String name;
  final String description;
  final String? xAccount;
  final ProfileWithSns profile;
  final Uri? sponsorImageUri;
  final bool isSponsor;
  final bool isSpeaker;
  final bool isAdult;
  final bool isEditable;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i18n = Translations.of(context);
    Future<void> onUpdated() async {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              i18n.ticketPage.editFields.results.success,
            ),
          ),
        );
      }
    }

    Future<void> onUpdateFailed([String? message]) async {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              i18n.ticketPage.editFields.results.error +
                  (message != null ? '($message)' : ''),
            ),
          ),
        );
        if (Navigator.of(context).canPop()) {
          Navigator.of(context).pop();
        }
      }
    }

    final theme = Theme.of(context);

    return SizedBox(
      width: 300,
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(
            color: theme.colorScheme.primary,
          ),
        ),
        clipBehavior: Clip.antiAlias,
        type: MaterialType.card,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // SafeArea
            ColoredBox(
              color: const Color(0xFF1970B6),
              child: SizedBox(
                height: 40,
                child: Center(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const SizedBox(
                      width: 80,
                      height: 12,
                    ),
                  ),
                ),
              ),
            ),
            // AppBar
            TicketCardAppBar(
              name: name,
              isEditable: isEditable,
              onUpdated: onUpdated,
              onUpdateFailed: onUpdateFailed,
            ),
            // Body
            _TicketCardBody(
              name: name,
              description: description,
              profile: profile,
              xAccount: xAccount,
              isAdult: isAdult,
              isEditable: isEditable,
              onUpdated: onUpdated,
              onUpdateFailed: onUpdateFailed,
            ),
          ],
        ),
      ),
    );
  }
}

class _TicketCardBody extends ConsumerWidget {
  const _TicketCardBody({
    required this.name,
    required this.description,
    required this.xAccount,
    required this.profile,
    required this.isAdult,
    required this.isEditable,
    required this.onUpdated,
    required this.onUpdateFailed,
  });

  final String name;
  final String description;
  final String? xAccount;
  final ProfileWithSns profile;
  final bool isAdult;
  final bool isEditable;

  final void Function() onUpdated;
  final void Function(String) onUpdateFailed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          ProfileAvatar(
            profile: profile,
          ),
          TicketCardXAccount(
            xAccount: xAccount,
            isEditable: isEditable,
            onUpdated: onUpdated,
            onUpdateFailed: onUpdateFailed,
          ),
          // ひとことカード
          TicketCommentCard(
            comment: description,
            isEditable: isEditable,
            onUpdated: onUpdated,
            onUpdateFailed: onUpdateFailed,
          ),
          TicketIsAdultCard(
            isAdult: isAdult,
            isEditable: isEditable,
            onUpdated: onUpdated,
            onUpdateFailed: onUpdateFailed,
          ),
        ],
      ),
    );
  }
}
