import 'dart:developer';

import 'package:common_data/profile.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/core/util/full_screen_loading.dart';
import 'package:ticket_web/feature/profile/data/profile_notifier.dart';
import 'package:ticket_web/feature/profile/data/user_avatar_image_provider.dart';
import 'package:ticket_web/feature/ticket/ui/components/image_cropper_dialog.dart';
import 'package:ticket_web/feature/ticket/ui/components/profile_avatar.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class ProfileAvatarChoiceDialog extends HookConsumerWidget {
  const ProfileAvatarChoiceDialog({
    required this.profile,
    super.key,
  });

  /// プロフィール画像の選択ダイアログを表示する
  /// プロフィール画像を選択する場合は、trueを返す
  /// プロフィール画像を削除する場合は、falseを返す
  /// キャンセルした場合は、nullを返す
  static Future<bool?> show({
    required BuildContext context,
    required ProfileWithSns profile,
  }) async =>
      showDialog<bool>(
        context: context,
        builder: (context) => ProfileAvatarChoiceDialog(
          profile: profile,
        ),
      );

  final ProfileWithSns profile;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(profileNotifierProvider);
    final userAvatarState = ref.watch(userAvatarImageProvider);

    final theme = Theme.of(context);

    final i18n = Translations.of(context);

    return AlertDialog(
      title: Text(i18n.ticketPage.editFields.avatar.title),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(t.ticketPage.editFields.avatar.description),
          const SizedBox(height: 16),
          ProfileAvatar(
            profile: profile.valueOrNull!,
            canEdit: false,
          ),
          const SizedBox(height: 8),
          if (userAvatarState.valueOrNull != null)
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
                final pickedImage =
                    await FullScreenCircularProgressIndicator.showUntil(
                  context,
                  ref.read(profileNotifierProvider.notifier).pickImage,
                );
                if (!context.mounted) {
                  return;
                }
                final croppedImage =
                    await ImageCropperDialog.show(context, pickedImage.$1);
                if (croppedImage == null || !context.mounted) {
                  return;
                }

                await FullScreenCircularProgressIndicator.showUntil(
                  context,
                  () async => ref
                      .read(profileNotifierProvider.notifier)
                      .updateProfileAvatar(
                        avatarData: croppedImage,
                        mimeType: pickedImage.$2,
                      ),
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
              } on ProfileAvatarException catch (e) {
                if (e.showMessage) {
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(e.message),
                      ),
                    );
                    Navigator.of(context).pop();
                  }
                }
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
