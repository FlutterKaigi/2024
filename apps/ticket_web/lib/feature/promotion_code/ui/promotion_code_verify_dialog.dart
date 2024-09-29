import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_api/model/ticket/get_promotion_response.dart';
import 'package:ticket_api/model/ticket/promotion_metadata.dart';
import 'package:ticket_api/ticket_api.dart';
import 'package:ticket_web/core/provider/ticket_api_base_url_provider.dart';
import 'package:ticket_web/core/util/full_screen_loading.dart';
import 'package:ticket_web/core/util/result.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class PromotionCodeVerifyDialog extends HookConsumerWidget {
  const PromotionCodeVerifyDialog({
    super.key,
  });

  static Future<(PromotionMetadata, String)?> show(
    BuildContext context, {
    PromotionMetadata? Function(GetPromotionResponse)? onSuccess,
  }) =>
      showDialog<(PromotionMetadata, String)>(
        context: context,
        builder: (context) => const PromotionCodeVerifyDialog(),
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i18n = Translations.of(context);

    Future<PromotionMetadata> verifyCode(
      String code,
    ) async {
      final baseUrl = ref.read(ticketApiBaseUrlProvider);
      final metadataResult = await ref
          .read(ticketApiClientProvider(baseUrl))
          .getPromotion(code: code);
      return metadataResult.metadata;
    }

    final codeController = useTextEditingController();

    Future<void> onSubmit() async {
      final inputValue = codeController.text;
      if (inputValue.isEmpty) {
        return;
      }
      final result = await FullScreenCircularProgressIndicator.showUntil(
        context,
        () async => verifyCode(inputValue),
      ).wrapped();
      if (context.mounted) {
        if (result case Success(:final value)) {
          if (Navigator.of(context).canPop()) {
            return Navigator.of(context).pop((value, inputValue));
          }
        } else if (result case Failure(:final exception)) {
          final String snackBarMessage;
          if (exception case DioException(:final response)
              when response != null) {
            log(response.data.toString());
            final i18n = Translations.of(context);
            final data = response.data;
            snackBarMessage = switch (response.statusCode) {
              404 => i18n.homePage.tickets.invitation.error.status404,
              429 => i18n.homePage.tickets.invitation.error.status429,
              500 => i18n.homePage.tickets.invitation.error.status500,
              _ when data is Map<String, dynamic> && data['error'] != null =>
                data['error']!.toString(),
              _ => i18n.homePage.tickets.invitation.error.unknown,
            };
          } else if (exception case DioException(:final message)
              when message != null) {
            snackBarMessage = message;
          } else {
            snackBarMessage = 'ネットワークのエラーが発生しました';
          }
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(snackBarMessage),
            ),
          );
        }
        Navigator.of(context).pop();
      }
    }

    return AlertDialog(
      title: const Text('i18n.homePage.tickets.invitation.name'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: codeController,
            decoration: InputDecoration(
              labelText: i18n.homePage.tickets.invitation.textBoxTitle,
              hintText: i18n.homePage.tickets.invitation.textBoxDescription,
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
            onSubmitted: (_) async => onSubmit(),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child:
              Text(i18n.homePage.tickets.invitation.validation.dialog.cancel),
        ),
        TextButton(
          onPressed: onSubmit,
          child: Text(i18n.homePage.tickets.invitation.validation.dialog.ok),
        ),
      ],
    );
  }
}
