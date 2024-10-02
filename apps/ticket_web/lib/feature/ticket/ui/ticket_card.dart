import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/core/util/full_screen_loading.dart';
import 'package:ticket_web/feature/profile/data/profile_notifier.dart';
import 'package:ticket_web/feature/ticket/ui/components/profile_avatar.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class TicketCard extends ConsumerWidget {
  const TicketCard({
    required this.name,
    required this.description,
    required this.xAccount,
    required this.avatarImageUri,
    required this.sponsorImageUri,
    required this.isSponsor,
    required this.isSpeaker,
    required this.isAdult,
    this.isEditable = false,
    super.key,
  });

  factory TicketCard.viewOnly({
    required String name,
    required String description,
    required String? xAccount,
    required Uri? avatarImageUri,
    required Uri? sponsorImageUri,
    required bool isSponsor,
    required bool isSpeaker,
    required bool isAdult,
  }) {
    return TicketCard(
      name: name,
      description: description,
      xAccount: xAccount,
      avatarImageUri: avatarImageUri,
      sponsorImageUri: sponsorImageUri,
      isSponsor: isSponsor,
      isSpeaker: isSpeaker,
      isAdult: isAdult,
    );
  }

  factory TicketCard.editable({
    required String name,
    required String description,
    required String? xAccount,
    required Uri? avatarImageUri,
    required Uri? sponsorImageUri,
    required bool isSponsor,
    required bool isSpeaker,
    required bool isAdult,
  }) {
    return TicketCard(
      name: name,
      description: description,
      xAccount: xAccount,
      avatarImageUri: avatarImageUri,
      sponsorImageUri: sponsorImageUri,
      isSponsor: isSponsor,
      isSpeaker: isSpeaker,
      isAdult: isAdult,
      isEditable: true,
    );
  }

  final String name;
  final String description;
  final String? xAccount;
  final Uri? avatarImageUri;
  final Uri? sponsorImageUri;
  final bool isSponsor;
  final bool isSpeaker;
  final bool isAdult;
  final bool isEditable;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    Future<void> onUpdated() async {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              t.ticketPage.editFields.results.success,
            ),
          ),
        );
      }
    }

    Future<void> onUpdateFailed([String? message]) async {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              t.ticketPage.editFields.results.error +
                  (message != null ? '($message)' : ''),
            ),
          ),
        );
        if (Navigator.of(context).canPop()) {
          Navigator.of(context).pop();
        }
      }
    }

    return SizedBox(
      height: 400,
      width: 300,
      child: Material(
        borderRadius: BorderRadius.circular(16),
        clipBehavior: Clip.antiAlias,
        type: MaterialType.card,
        child: Column(
          children: [
            // SafeArea
            ColoredBox(
              color: const Color(0xFF1970B6),
              child: SizedBox(
                height: 40,
                child: Center(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const SizedBox(
                      width: 80,
                      height: 12,
                    ),
                  ),
                ),
              ),
            ),
            // AppBar
            ColoredBox(
              color: const Color(0xFF2196F3),
              child: SizedBox(
                height: 40,
                child: Row(
                  children: [
                    Expanded(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            name,
                            style: textTheme.bodyLarge?.copyWith(
                              color: Colors.white,
                            ),
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
                        onPressed: () async => _EditDialog.show(
                          type: _EditDialogType.name,
                          initialValue: name,
                          title: t.ticketPage.editFields.name.title,
                          description: t.ticketPage.editFields.name.description,
                          maxLength: 20,
                          onUpdated: (value) async {
                            try {
                              await FullScreenCircularProgressIndicator
                                  .showUntil(
                                context,
                                () async => ref
                                    .read(profileNotifierProvider.notifier)
                                    .updateProfileName(value),
                              );
                              await onUpdated();
                            } on Exception catch (e) {
                              await onUpdateFailed(e.toString());
                            }
                          },
                          context: context,
                        ),
                      ),
                  ],
                ),
              ),
            ),
            // Body
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    if (avatarImageUri != null)
                      ProfileAvatar(
                        avatarImageUri: avatarImageUri!,
                      ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(),
                            Text(
                              t.ticketPage.editFields.comment.title,
                              style: textTheme.bodySmall?.copyWith(
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(description),
                            if (isEditable)
                              Align(
                                alignment: Alignment.bottomRight,
                                child: IconButton(
                                  icon: const Icon(Icons.edit),
                                  onPressed: () async => _EditDialog.show(
                                    type: _EditDialogType.comment,
                                    initialValue: description,
                                    title:
                                        t.ticketPage.editFields.comment.title,
                                    description: t.ticketPage.editFields.comment
                                        .description,
                                    maxLength: 40,
                                    onUpdated: (value) async {
                                      try {
                                        await FullScreenCircularProgressIndicator
                                            .showUntil(
                                          context,
                                          () async => ref
                                              .read(
                                                profileNotifierProvider
                                                    .notifier,
                                              )
                                              .updateProfileDescription(value),
                                        );
                                        await onUpdated();
                                      } on Exception catch (e) {
                                        await onUpdateFailed(e.toString());
                                      }
                                    },
                                    context: context,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _EditDialog extends HookWidget {
  const _EditDialog({
    required this.initialValue,
    required this.title,
    required this.description,
    required this.onUpdated,
    required this.context,
    required this.maxLength,
    required this.isOnlyEnglish,
    required this.type,
  });

  static Future<void> show({
    required String initialValue,
    required String title,
    required String description,
    required void Function(String) onUpdated,
    required BuildContext context,
    required _EditDialogType type,
    int? maxLength,
    bool isOnlyEnglish = false,
  }) async =>
      showDialog<void>(
        context: context,
        builder: (context) => _EditDialog(
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
  final _EditDialogType type;

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
                    _EditDialogType.name =>
                      t.ticketPage.editFields.name.validation.empty,
                    _EditDialogType.comment => null,
                  };
                }

                final invalidCharacters = switch (type) {
                  _EditDialogType.name =>
                    t.ticketPage.editFields.name.validation.invalidCharacters,
                  _EditDialogType.comment => t.ticketPage.editFields.comment
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

enum _EditDialogType {
  name,
  comment,
  ;
}
