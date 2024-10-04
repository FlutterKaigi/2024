import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/core/util/full_screen_loading.dart';
import 'package:ticket_web/feature/profile/data/profile_notifier.dart';
import 'package:ticket_web/feature/ticket/ui/components/ticket_card_edit_dialog.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class TicketCardAppBar extends ConsumerWidget {
  const TicketCardAppBar({
    required this.name,
    required this.isEditable,
    required this.onUpdated,
    required this.onUpdateFailed,
    super.key,
  });

  final String name;
  final bool isEditable;
  final void Function() onUpdated;
  final void Function(String) onUpdateFailed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final i18n = Translations.of(context);

    return ColoredBox(
      color: const Color(0xFF2196F3),
      child: SizedBox(
        height: kToolbarHeight,
        child: Row(
          children: [
            Expanded(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        i18n.ticketPage.editFields.name.title,
                        style: textTheme.bodySmall?.copyWith(
                          color: Colors.white.withValues(alpha: 0.5),
                        ),
                      ),
                      Text(
                        name,
                        style: textTheme.bodyLarge?.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (isEditable)
              IconButton(
                icon: const Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
                onPressed: () async => TicketCardEditDialog.show(
                  type: EditDialogType.name,
                  initialValue: name,
                  title: i18n.ticketPage.editFields.name.title,
                  description: i18n.ticketPage.editFields.name.description,
                  maxLength: 20,
                  onUpdated: (value) async {
                    try {
                      await FullScreenCircularProgressIndicator.showUntil(
                        context,
                        () async => ref
                            .read(profileNotifierProvider.notifier)
                            .updateProfileName(value),
                      );
                      onUpdated();
                    } on Exception catch (e) {
                      onUpdateFailed(e.toString());
                    }
                  },
                  context: context,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
