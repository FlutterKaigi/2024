import 'package:common_data/profile.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/core/gen/assets.gen.dart';
import 'package:ticket_web/core/util/full_screen_loading.dart';
import 'package:ticket_web/feature/profile/data/profile_notifier.dart';
import 'package:ticket_web/feature/ticket/ui/components/ticket_card_edit_dialog.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class TicketCardXAccount extends ConsumerWidget {
  const TicketCardXAccount({
    required this.xAccount,
    required this.isEditable,
    required this.onUpdated,
    required this.onUpdateFailed,
    super.key,
  });

  final String? xAccount;
  final bool isEditable;
  final void Function() onUpdated;
  final void Function(String errorMessage) onUpdateFailed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i18n = Translations.of(context);

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Assets.images.sns.xSvg.svg(
            height: 20,
            width: 20,
          ),
          const SizedBox(width: 4),
          if (xAccount != null)
            Flexible(
              child: Text(xAccount!),
            )
          else
            Flexible(
              child: Text(i18n.ticketPage.editFields.xAccount.unknown),
            ),
          if (isEditable)
            Align(
              alignment: Alignment.bottomRight,
              child: IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () async => TicketCardEditDialog.show(
                  type: EditDialogType.xAccount,
                  isOnlyEnglish: true,
                  initialValue: xAccount ?? '',
                  title: i18n.ticketPage.editFields.xAccount.title,
                  description: i18n.ticketPage.editFields.xAccount.description,
                  maxLength: 40,
                  onUpdated: (value) async {
                    try {
                      await FullScreenCircularProgressIndicator.showUntil(
                        context,
                        () async => ref
                            .read(
                          profileNotifierProvider.notifier,
                        )
                            .updateSnsAccounts(
                          snsAccounts: [
                            if (value.isNotEmpty) (SnsType.x, value),
                          ],
                        ),
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
    );
  }
}
