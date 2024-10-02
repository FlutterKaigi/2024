import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/feature/profile/data/profile_notifier.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class TicketCard extends StatelessWidget {
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
    this.onNameUpdated,
    this.onDescriptionUpdated,
    this.onXAccountUpdated,
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
    required void Function(String) onNameUpdated,
    required void Function(String) onDescriptionUpdated,
    required void Function(String?) onXAccountUpdated,
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
      onNameUpdated: onNameUpdated,
      onDescriptionUpdated: onDescriptionUpdated,
      onXAccountUpdated: onXAccountUpdated,
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
  final void Function(String)? onNameUpdated;
  final void Function(String)? onDescriptionUpdated;
  final void Function(String?)? onXAccountUpdated;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

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
                    FittedBox(
                      fit: BoxFit.scaleDown,
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
                    if (isEditable)
                      IconButton(
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                        onPressed: () async => _showEditDialog(
                          initialValue: name,
                          title: t.ticketPage.editFields.name.title,
                          description: t.ticketPage.editFields.name.description,
                          onUpdated: (_) async {},
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
                      _ProfileAvatar(
                        avatarImageUri: avatarImageUri!,
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

  Future<void> _showEditDialog({
    required String initialValue,
    required String title,
    required String description,
    required void Function(String) onUpdated,
    required BuildContext context,
  }) async {
    await showDialog<void>(
      context: context,
      builder: (context) {
        var newValue = initialValue;
        return AlertDialog(
          title: Text(title),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(description),
              TextField(
                controller: TextEditingController(text: initialValue),
                onChanged: (value) => newValue = value,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(t.ticketPage.editFields.dialog.cancel),
            ),
            TextButton(
              onPressed: () {
                onUpdated(newValue);
                Navigator.of(context).pop();
              },
              child: Text(t.ticketPage.editFields.dialog.ok),
            ),
          ],
        );
      },
    );
  }
}

class _ProfileAvatar extends HookWidget {
  const _ProfileAvatar({
    required this.avatarImageUri,
    this.onTap,
    this.size = 100,
    super.key,
  });

  final Uri avatarImageUri;
  final VoidCallback? onTap;

  final double size;

  @override
  Widget build(BuildContext context) {
    final image = Image.network(
      avatarImageUri.toString(),
      fit: BoxFit.cover,
      width: size,
      height: size,
    );

    final isHover = useState(false);

    // カーソルが乗ったときは、編集アイコンを出す
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => isHover.value = true,
      onExit: (_) => isHover.value = false,
      child: ClipOval(
        child: Stack(
          alignment: Alignment.center,
          children: [
            image,
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: isHover.value
                  ? GestureDetector(
                      onTap: () async => _ProfileAvatarChoiceDialog.show(
                        context: context,
                        avatarImageUri: avatarImageUri,
                      ),
                      child: ColoredBox(
                        color: Colors.black.withValues(alpha: 0.5),
                        child: SizedBox(
                          width: size,
                          height: size,
                          child: const Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileAvatarChoiceDialog extends ConsumerWidget {
  const _ProfileAvatarChoiceDialog();

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
        builder: (context) => const _ProfileAvatarChoiceDialog(),
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
                onPressed: () => Navigator.of(context).pop(false),
                child: Text(
                  t.ticketPage.editFields.avatar.removeButton,
                  style: TextStyle(color: theme.colorScheme.error),
                ),
              ),
            TextButton(
              child: Text(t.ticketPage.editFields.avatar.uploadButton),
              onPressed: () async {
                try {
                  await ref
                      .read(profileNotifierProvider.notifier)
                      .uploadProfileAvatarWithFilePicker();
                } on Exception catch (e) {
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(e.toString()),
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
