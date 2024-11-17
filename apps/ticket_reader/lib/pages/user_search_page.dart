/// ユーザー検索ページ
/// `ProfileWithTicketsAndEntryLogView`を取得して表示します
library;

import 'package:common_data/entry_log.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_reader/core/components/error/error_card.dart';
import 'package:ticket_reader/features/profile/data/profile_with_ticket_and_entry_log_notifier.dart';
import 'package:ticket_reader/features/profile/ui/profile_table.dart';

class UserSearchRoute extends GoRouteData {
  const UserSearchRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const UserSearchPage();
  }
}

class UserSearchPage extends HookConsumerWidget {
  const UserSearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final argument = useState(const ProfileWithTicketAndEntryLogArgument());
    final provider =
        profileWithTicketAndEntryLogNotifierProvider(argument: argument.value);
    final state = ref.watch(
      provider,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('ユーザー検索'),
        actions: [
          IconButton(
            onPressed: () async => ref.refresh(provider),
            icon: const Icon(Icons.refresh),
          ),
          IconButton(
            onPressed: () async {
              final result =
                  await _ArgumentDialog.show(context, argument.value);
              if (result != null) {
                argument.value = result;
              }
            },
            icon: const Icon(Icons.edit),
          ),
        ],
      ),
      body: state.when<Widget>(
        data: (data) => ProfileTable(
          profiles: data.data,
          totalCount: data.totalCount,
        ),
        error: (error, stackTrace) => ErrorCard(
          error: error,
          onReload: () async => ref.refresh(provider),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
    );
  }
}

class _ArgumentDialog extends HookWidget {
  const _ArgumentDialog({
    required this.argument,
  });

  static Future<ProfileWithTicketAndEntryLogArgument?> show(
    BuildContext context,
    ProfileWithTicketAndEntryLogArgument argument,
  ) async {
    return showDialog<ProfileWithTicketAndEntryLogArgument>(
      context: context,
      builder: (context) => _ArgumentDialog(argument: argument),
    );
  }

  final ProfileWithTicketAndEntryLogArgument argument;

  @override
  Widget build(BuildContext context) {
    final hasTicket = useState<bool?>(argument.hasTicket);
    final hasEntryLog = useState<bool?>(argument.hasEntryLog);
    final userIdContains = useState<String?>(argument.userIdContains);
    final emailContains = useState<String?>(argument.emailContains);

    return AlertDialog(
      insetPadding: const EdgeInsets.all(8),
      title: const Text('ユーザー検索条件'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text('チケット保有ユーザ条件'),
              trailing: DropdownMenu<bool?>(
                initialSelection: hasTicket.value,
                onSelected: (value) => hasTicket.value = value,
                dropdownMenuEntries: const [
                  DropdownMenuEntry<bool?>(
                    value: null,
                    label: '条件なし',
                  ),
                  DropdownMenuEntry<bool?>(
                    value: true,
                    label: '保有',
                  ),
                  DropdownMenuEntry<bool?>(
                    value: false,
                    label: '未保有',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            ListTile(
              title: const Text('入場ログ'),
              trailing: DropdownMenu<bool?>(
                initialSelection: hasEntryLog.value,
                onSelected: (value) => hasEntryLog.value = value,
                dropdownMenuEntries: const [
                  DropdownMenuEntry<bool?>(
                    value: null,
                    label: '条件なし',
                  ),
                  DropdownMenuEntry<bool?>(
                    value: true,
                    label: '入場済み',
                  ),
                  DropdownMenuEntry<bool?>(
                    value: false,
                    label: '未入場',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              initialValue: userIdContains.value,
              onChanged: (value) {
                if (value.isEmpty) {
                  userIdContains.value = null;
                } else {
                  userIdContains.value = value;
                }
              },
              decoration: const InputDecoration(
                label: Text('ユーザーID'),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              initialValue: emailContains.value,
              onChanged: (value) => emailContains.value = value,
              decoration: const InputDecoration(
                label: Text('メールアドレス'),
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
      actions: [
        if (hasTicket.value != null ||
            hasEntryLog.value != null ||
            userIdContains.value != null ||
            emailContains.value != null)
          TextButton(
            onPressed: () {
              hasTicket.value = null;
              hasEntryLog.value = null;
              userIdContains.value = null;
              emailContains.value = null;
            },
            child: const Text('クリア'),
          ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('キャンセル'),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(
            ProfileWithTicketAndEntryLogArgument(
              hasTicket: hasTicket.value,
              hasEntryLog: hasEntryLog.value,
              userIdContains: userIdContains.value,
              emailContains: emailContains.value,
            ),
          ),
          child: const Text('適用'),
        ),
      ],
    );
  }
}
