import 'dart:developer';

import 'package:common_data/profile.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/core/util/full_screen_loading.dart';
import 'package:ticket_web/feature/profile/data/profile_notifier.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class ProfileAvatarChoiceDialog extends ConsumerWidget {
  const ProfileAvatarChoiceDialog({super.key});

  /// プロフィール画像の選択ダイアログを表示する
  /// プロフィール画像を選択する場合は、trueを返す
  /// プロフィール画像を削除する場合は、falseを返す
  /// キャンセルした場合は、nullを返す
  static Future<bool?> show({
    required BuildContext context,
    required Uri? avatarImageUri,
  }) async =>
      showDialog<bool>(
        context: context,
        builder: (context) => const ProfileAvatarChoiceDialog(),
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(profileNotifierProvider);
    final theme = Theme.of(context);

    final avatarImageUri = profile.valueOrNull?.userAvatarUri;
    final googleAvatarUri = profile.valueOrNull?.googleAvatarUri;

    return AlertDialog(
      title: Text(t.ticketPage.editFields.avatar.title),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(t.ticketPage.editFields.avatar.description),
          const SizedBox(height: 16),
          if (avatarImageUri != null || googleAvatarUri != null) ...[
            CircleAvatar(
              backgroundImage: NetworkImage(
                (avatarImageUri ?? googleAvatarUri).toString(),
              ),
              radius: 40,
            ),
            const SizedBox(height: 8),
            if (avatarImageUri != null)
              TextButton(
                onPressed: () async {
                  try {
                    await FullScreenCircularProgressIndicator.showUntil(
                      context,
                      ref
                          .read(profileNotifierProvider.notifier)
                          .deleteProfileAvatar,
                    );
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            t.ticketPage.editFields.avatar.deleteSuccess,
                          ),
                        ),
                      );
                      Navigator.of(context).pop();
                    }
                  } on Exception catch (e) {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            '${t.ticketPage.editFields.avatar.deleteError} '
                            '(${e.runtimeType})',
                          ),
                        ),
                      );
                      Navigator.of(context).pop();
                    }
                  }
                },
                child: Text(
                  t.ticketPage.editFields.avatar.removeButton,
                  style: TextStyle(color: theme.colorScheme.error),
                ),
              ),
            TextButton(
              child: Text(t.ticketPage.editFields.avatar.uploadButton),
              onPressed: () async {
                try {
                  await FullScreenCircularProgressIndicator.showUntil(
                    context,
                    ref
                        .read(profileNotifierProvider.notifier)
                        .uploadProfileAvatarWithFilePicker,
                  );
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content:
                            Text(t.ticketPage.editFields.avatar.uploadSuccess),
                      ),
                    );
                    Navigator.of(context).pop();
                  }
                } on ProfileAvatarException {
                  return;
                } on StorageException catch (e) {
                  log(e.toString());
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          '${t.ticketPage.editFields.avatar.uploadError} '
                          '(${e.statusCode}: ${e.message})',
                        ),
                      ),
                    );
                    Navigator.of(context).pop();
                  }
                } on Exception catch (e) {
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          '${t.ticketPage.editFields.avatar.uploadError} '
                          '(${e.runtimeType})',
                        ),
                      ),
                    );
                    Navigator.of(context).pop();
                  }
                }
              },
            ),
          ],
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(t.ticketPage.editFields.dialog.ok),
        ),
      ],
    );
  }
}
