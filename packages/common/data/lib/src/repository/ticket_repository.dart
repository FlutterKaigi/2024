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
}
