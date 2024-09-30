import 'package:common_data/ticket.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ticket_notifier.g.dart';

@Riverpod(keepAlive: true)
class TicketNotifier extends _$TicketNotifier {
  @override
  Future<Ticket?> build() async {
    final api = ref.watch(ticketRepositoryProvider);
    return api.fetchSelfTicket();
  }

  Future<void> deleteCurrentTicket() async {
    final api = ref.read(ticketRepositoryProvider);
    await api.deleteTicket(state.value!.id);
    ref.invalidateSelf();
  }
}
