import 'package:common_data/ticket.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_web/feature/auth/data/auth_notifier.dart';

part 'ticket_notifier.g.dart';

@Riverpod()
class TicketNotifier extends _$TicketNotifier {
  @override
  Future<Ticket?> build() async {
    final api = ref.watch(ticketRepositoryProvider);
    final ticket = await api.fetchSelfTicket();
    // ログインしたら取得
    ref.listen(
      authNotifierProvider,
      (_, next) {
        if (next != null) {
          ref.invalidateSelf();
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
