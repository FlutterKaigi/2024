import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/core/util/full_screen_loading.dart';
import 'package:ticket_web/feature/profile/data/profile_notifier.dart';
import 'package:ticket_web/feature/ticket/ui/components/ticket_card_edit_dialog.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class TicketCommentCard extends ConsumerWidget {
  const TicketCommentCard({
    required this.comment,
    required this.isEditable,
    required this.onUpdated,
    required this.onUpdateFailed,
    super.key,
  });

  final String comment;
  final bool isEditable;
  final void Function() onUpdated;
  final void Function(String errorMessage) onUpdateFailed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final i18n = Translations.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(),
            Text(
              i18n.ticketPage.editFields.comment.title,
              style: textTheme.bodySmall?.copyWith(
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 4),
            Text(comment),
            if (isEditable)
              Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () async => TicketCardEditDialog.show(
                    type: EditDialogType.comment,
                    initialValue: comment,
                    title: i18n.ticketPage.editFields.comment.title,
                    description: i18n.ticketPage.editFields.comment.description,
                    maxLength: 40,
                    onUpdated: (value) async {
                      try {
                        await FullScreenCircularProgressIndicator.showUntil(
                          context,
                          () async => ref
                              .read(
                                profileNotifierProvider.notifier,
                              )
                              .updateProfileDescription(value),
                        );
                        onUpdated();
                      } on Exception catch (e) {
                        onUpdateFailed(e.toString());
                      }
                    },
                    context: context,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
