import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class TicketCardEditDialog extends HookWidget {
  const TicketCardEditDialog({
    required this.initialValue,
    required this.title,
    required this.description,
    required this.onUpdated,
    required this.context,
    required this.maxLength,
    required this.isOnlyEnglish,
    required this.type,
    super.key,
  });

  static Future<void> show({
    required String initialValue,
    required String title,
    required String description,
    required void Function(String) onUpdated,
    required BuildContext context,
    required EditDialogType type,
    int? maxLength,
    bool isOnlyEnglish = false,
  }) async =>
      showDialog<void>(
        context: context,
        builder: (context) => TicketCardEditDialog(
          initialValue: initialValue,
          title: title,
          description: description,
          onUpdated: onUpdated,
          context: context,
          maxLength: maxLength,
          isOnlyEnglish: isOnlyEnglish,
          type: type,
        ),
      );

  final String initialValue;
  final String title;
  final String description;
  final void Function(String) onUpdated;
  final BuildContext context;
  final int? maxLength;
  final bool isOnlyEnglish;
  final EditDialogType type;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: initialValue);

    final formKey = useRef(GlobalKey<FormState>());

    final isValidated = useState(false);

    return AlertDialog(
      title: Text(title),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(description),
          const SizedBox(height: 8),
          Form(
            key: formKey.value,
            child: TextFormField(
              controller: controller,
              maxLength: maxLength,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              autovalidateMode: AutovalidateMode.always,
              onFieldSubmitted: (_) {
                isValidated.value =
                    formKey.value.currentState?.validate() ?? false;
                if (isValidated.value) {
                  onUpdated(controller.text);
                  Navigator.of(context).pop();
                }
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return switch (type) {
                    EditDialogType.name =>
                      t.ticketPage.editFields.name.validation.empty,
                    EditDialogType.comment => null,
                  };
                }

                final invalidCharacters = switch (type) {
                  EditDialogType.name =>
                    t.ticketPage.editFields.name.validation.invalidCharacters,
                  EditDialogType.comment => t.ticketPage.editFields.comment
                      .validation.invalidCharacters,
                };
                if (isOnlyEnglish) {
                  // 半角英数字, 半角アンダースコア
                  final regex = RegExp(r'^[a-zA-Z0-9_]+$');
                  if (!regex.hasMatch(value)) {
                    return invalidCharacters;
                  }
                } else {
                  // 半角/全角英数字, 全角ひらがな, 全角カタカナ, JIS 第2水準漢字, 半角/全角スペース, 半角記号
                  final regex = RegExp(
                    r'^[a-zA-Zａ-ｚＡ-Ｚ0-9０-９ぁ-んァ-ン\u4E00-\u9FFF -/:-@\[-~　]+$',
                  );
                  if (!regex.hasMatch(value)) {
                    return invalidCharacters;
                  }
                }
                return null;
              },
              onChanged: (_) {
                isValidated.value =
                    formKey.value.currentState?.validate() ?? false;
              },
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(t.ticketPage.editFields.dialog.cancel),
        ),
        TextButton(
          onPressed: isValidated.value
              ? () {
                  onUpdated(controller.text);
                  Navigator.of(context).pop();
                }
              : null,
          child: Text(t.ticketPage.editFields.dialog.ok),
        ),
      ],
    );
  }
}

enum EditDialogType {
  name,
  comment,
  ;
}
