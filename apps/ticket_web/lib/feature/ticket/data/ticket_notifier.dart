import 'package:common_data/ticket.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_web/feature/profile/data/profile_notifier.dart';

part 'ticket_notifier.g.dart';

@Riverpod(keepAlive: true)
class TicketNotifier extends _$TicketNotifier {
  @override
  Future<Ticket?> build() async {
    final api = ref.watch(ticketRepositoryProvider);
    final ticket = await api.fetchSelfTicket();
    ref.listen(
      profileNotifierProvider,
      (_, next) {
        if (next case AsyncData()) {
          // ログインしたら再取得
          ref.invalidateSelf();
        } else {
          // ログアウトしたらnullにする
          state = const AsyncData(null);
        }
      },
    );
    return ticket;
  }

  Future<void> deleteCurrentTicket() async {
    final api = ref.read(ticketRepositoryProvider);
    await api.deleteTicket(state.value!.id);
    ref.invalidateSelf();
  }
}
