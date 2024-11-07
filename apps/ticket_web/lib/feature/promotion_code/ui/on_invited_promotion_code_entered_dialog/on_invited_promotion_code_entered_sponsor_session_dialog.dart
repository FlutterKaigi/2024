import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/feature/sponsor/data/sponsor_provider.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class OnInvitedPromotionCodeEnteredSponsorSessionDialog
    extends HookConsumerWidget {
  const OnInvitedPromotionCodeEnteredSponsorSessionDialog({
    required this.sessionWithSponsors,
    required this.title,
    super.key,
  });

  static Future<SponsorAndSession?> show({
    required BuildContext context,
    required List<SponsorAndSession> sessionWithSponsors,
    required String title,
  }) async =>
      showDialog<SponsorAndSession>(
        barrierDismissible: false,
        context: context,
        builder: (context) => OnInvitedPromotionCodeEnteredSponsorSessionDialog(
          sessionWithSponsors: sessionWithSponsors,
          title: title,
        ),
      );

  final List<SponsorAndSession> sessionWithSponsors;
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i18n =
        Translations.of(context).homePage.tickets.invitation.validation;

    final selectedSession = useState<SponsorAndSession?>(null);

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
              dropdownMenuEntries: sessionWithSponsors
                  .map(
                    (sessionWithSponsor) => DropdownMenuEntry(
                      value: sessionWithSponsor,
                      label: '${sessionWithSponsor.session.title} - '
                          '${sessionWithSponsor.sponsor.name}',
                    ),
                  )
                  .toList(),
              onSelected: (v) => selectedSession.value = v,
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
