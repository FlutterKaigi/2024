import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/core/util/full_screen_loading.dart';
import 'package:ticket_web/feature/profile/data/profile_notifier.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class TicketIsAdultCard extends ConsumerWidget {
  const TicketIsAdultCard({
    required this.isAdult,
    required this.isEditable,
    required this.onUpdated,
    required this.onUpdateFailed,
    super.key,
  });

  final bool isAdult;
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
              i18n.ticketPage.editFields.isAdult.title,
              style: textTheme.bodySmall?.copyWith(
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              isAdult
                  ? i18n.ticketPage.editFields.isAdult.yes
                  : i18n.ticketPage.editFields.isAdult.no,
            ),
            if (isEditable)
              Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () async {
                    final result = await showDialog<bool>(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(i18n.ticketPage.editFields.isAdult.title),
                          content: Text(
                            i18n.ticketPage.editFields.isAdult.description,
                          ),
                          actions: [
                            TextButton(
                              child:
                                  Text(i18n.ticketPage.editFields.isAdult.no),
                              onPressed: () => Navigator.of(context).pop(false),
                            ),
                            TextButton(
                              child:
                                  Text(i18n.ticketPage.editFields.isAdult.yes),
                              onPressed: () => Navigator.of(context).pop(true),
                            ),
                          ],
                        );
                      },
                    );

                    if (result != null) {
                      try {
                        await FullScreenCircularProgressIndicator.showUntil(
                          context,
                          () async => ref
                              .read(profileNotifierProvider.notifier)
                              .updateProfileIsAdult(isAdult: result),
                        );
                        onUpdated();
                      } on Exception catch (e) {
                        onUpdateFailed(e.toString());
                      }
                    }
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
