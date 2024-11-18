/// ユーザー検索ページ
/// `ProfileWithTicketsAndEntryLogView`を取得して表示します
library;

import 'dart:developer';

import 'package:common_data/entry_log.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_reader/core/components/error/error_card.dart';
import 'package:ticket_reader/features/profile/data/profile_with_ticket_and_entry_log_notifier.dart';
import 'package:ticket_reader/features/profile/ui/profile_table.dart';
import 'package:ticket_reader/pages/components/user_search/user_search_parameter.dart';

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
    final sortType = useState(ProfileWithTicketAndEntryLogSort.id);
    final provider =
        profileWithTicketAndEntryLogNotifierProvider(argument: argument.value);
    final state = ref.watch(provider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('ユーザー検索'),
        actions: [
          IconButton(
            onPressed: () async {
              await HapticFeedback.lightImpact();
              return ref.refresh(provider);
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: UserSearchParameter(
              argument: argument.value,
              onArgumentChanged: (value) {
                log('onArgumentChanged: $value');
                argument.value = value;
              },
            ),
          ),
          Expanded(
            child: state.when<Widget>(
              data: (data) => ProfileTable(
                profiles: data.data,
                totalCount: data.totalCount,
                onRefresh: () async => ref.refresh(provider),
                onLoadMore: () async =>
                    ref.read(provider.notifier).fetchNextPage(),
              ),
              error: (error, stackTrace) => ErrorCard(
                error: error,
                onReload: () async => ref.refresh(provider),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
