import 'package:common_data/sponsor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class OnInvitedPromotionCodeEnteredSponsorDialog extends HookConsumerWidget {
  const OnInvitedPromotionCodeEnteredSponsorDialog({
    required this.sponsors,
    required this.title,
    super.key,
  });

  final List<SponsorWithSession> sponsors;
  final String title;

  static Future<SponsorWithSession?> show({
    required BuildContext context,
    required List<SponsorWithSession> sponsors,
    required String title,
  }) async =>
      showDialog<SponsorWithSession>(
        barrierDismissible: false,
        context: context,
        builder: (context) => OnInvitedPromotionCodeEnteredSponsorDialog(
          sponsors: sponsors,
          title: title,
        ),
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i18n =
        Translations.of(context).homePage.tickets.invitation.validation;

    final selectedSession = useState<SponsorWithSession?>(null);

    return AlertDialog(
      title: Text(title),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${i18n.invited.description}\n${i18n.invited.warning}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 8),
            DropdownMenu(
              dropdownMenuEntries: sponsors
                  .map(
                    (e) => DropdownMenuEntry(
                      value: e,
                      label: e.name,
                    ),
                  )
                  .toList(),
              onSelected: (session) => selectedSession.value = session,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: selectedSession.value == null
              ? null
              : () => Navigator.of(context).pop(selectedSession.value),
          child: Text(i18n.invited.next),
        ),
      ],
    );
  }
}
