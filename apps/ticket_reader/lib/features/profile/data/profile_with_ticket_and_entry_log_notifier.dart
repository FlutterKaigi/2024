import 'package:common_data/entry_log.dart';
import 'package:common_data/profile.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_with_ticket_and_entry_log_notifier.g.dart';

@Riverpod(keepAlive: true)
class ProfileWithTicketAndEntryLogNotifier
    extends _$ProfileWithTicketAndEntryLogNotifier {
  @override
  Future<PagingResult<List<ProfileWithTicketAndEntryLog>>> build({
    ProfileWithTicketAndEntryLogArgument? argument,
  }) async {
    final result = await ref
        .read(profileRepositoryProvider)
        .fetchProfilesWithTicketAndEntryLog(
          argument: argument ?? const ProfileWithTicketAndEntryLogArgument(),
          limit: _pageSize,
          
        );
    return result;
  }

  Future<void> fetchNextPage() async {
    // 読み込み中の場合は何もしない
    if (state.isRefreshing || state.isReloading) {
      return;
    }
    // すでに全件取得済みの場合は何もしない
    if (!(state.valueOrNull?.hasNext ?? false)) {
      return;
    }

    state =
        const AsyncLoading<PagingResult<List<ProfileWithTicketAndEntryLog>>>()
            .copyWithPrevious(state);

    state = await AsyncValue.guard(
      () async {
        final result = await ref
            .read(profileRepositoryProvider)
            .fetchProfilesWithTicketAndEntryLog(
              argument:
                  argument ?? const ProfileWithTicketAndEntryLogArgument(),
              offset: state.valueOrNull?.data.length ?? 0,
              limit: _pageSize,
            );

        final currentData = state.valueOrNull?.data;
        return PagingResult<List<ProfileWithTicketAndEntryLog>>(
          totalCount: result.totalCount,
          data: [
            if (currentData != null) ...currentData,
            ...result.data,
          ],
        );
      },
    );
  }

  static const _pageSize = 50;
}
