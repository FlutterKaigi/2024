import 'package:common_data/session.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class OnInvitedPromotionCodeEnteredSessionDialog extends HookConsumerWidget {
  const OnInvitedPromotionCodeEnteredSessionDialog({
    required this.sessions,
    required this.title,
    super.key,
  });

  final List<Session> sessions;
  final String title;

  static Future<Session?> show({
    required BuildContext context,
    required List<Session> sessions,
    required String title,
  }) async =>
      showDialog<Session>(
        barrierDismissible: false,
        context: context,
        builder: (context) => OnInvitedPromotionCodeEnteredSessionDialog(
          sessions: sessions,
          title: title,
        ),
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i18n =
        Translations.of(context).homePage.tickets.invitation.validation;

    final selectedSession = useState<Session?>(null);

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
              dropdownMenuEntries: sessions
                  .map(
                    (session) => DropdownMenuEntry(
                      value: session,
                      label: session.title,
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
