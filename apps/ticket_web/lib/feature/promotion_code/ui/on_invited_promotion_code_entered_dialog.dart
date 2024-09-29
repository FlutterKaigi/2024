import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_api/model/ticket/promotion_metadata.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

/// 招待コードが入力された際のダイアログ
/// ここで、所属スポンサー or/and セッションIDを保存する
class OnInvitedPromotionCodeEnteredDialog extends HookConsumerWidget {
  const OnInvitedPromotionCodeEnteredDialog({
    required this.metadata,
    super.key,
  });

  final PromotionMetadata metadata;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i18n = Translations.of(context);

    final title = i18n.homePage.tickets.invitation.validation.ok;

    return const AlertDialog(
      title: Text('招待コードが正常に検証されました'),
    );
  }
}
