import 'package:common_data/src/model/ticket.dart';
import 'package:common_data/src/supabase_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'ticket_repository.g.dart';

@Riverpod(keepAlive: true)
TicketRepository ticketRepository(TicketRepositoryRef ref) => TicketRepository(
      supabase: ref.watch(supabaseClientProvider),
    );

class TicketRepository {
  TicketRepository({
    required SupabaseClient supabase,
  }) : _supabase = supabase;

  final SupabaseClient _supabase;

  Future<Ticket?> fetchTicketByUserId(String userId) async => _supabase
      .from('tickets')
      .select()
      .eq('user_id', userId)
      .maybeSingle()
      .withConverter((data) => data != null ? Ticket.fromJson(data) : null);

  /// 自分のチケットを取得する
  /// ログインしていない場合はnullを返す
  Future<Ticket?> fetchSelfTicket() async {
    final user = _supabase.auth.currentUser;
    if (user == null) {
      return null;
    }
    return fetchTicketByUserId(user.id);
  }

  /// チケットを更新する
  Future<Ticket?> updateTicket({
    required String ticketId,
    String? stripeCheckoutSessionId,
    String? sessionId,
    int? sponsorId,
    TicketType? type,
  }) async =>
      _supabase
          .from('tickets')
          .update({
            'stripe_checkout_session_id': stripeCheckoutSessionId,
            'session_id': sessionId,
            'sponsor_id': sponsorId,
            'type': type,
          })
          .eq('id', ticketId)
          .select()
          .maybeSingle()
          .withConverter((data) => data != null ? Ticket.fromJson(data) : null);

  /// チケットを作成する
  Future<Ticket> createTicket({
    required String userId,
    required TicketType type,
  }) async =>
      _supabase
          .from('tickets')
          .insert({
            'user_id': userId,
            'type': type,
          })
          .select()
          .single()
          .withConverter(Ticket.fromJson);

  /// チケットを削除する
  Future<void> deleteTicket(String ticketId) async =>
      _supabase.from('tickets').delete().eq('id', ticketId);
}
