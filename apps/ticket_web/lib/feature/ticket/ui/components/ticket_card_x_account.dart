import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/core/gen/assets.gen.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class TicketCardXAccount extends ConsumerWidget {
  const TicketCardXAccount({
    required this.xAccount,
    super.key,
  });

  final String? xAccount;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            Text(xAccount!)
          else
            Text(t.ticketPage.editFields.xAccount.unknown),
        ],
      ),
    );
  }
}
