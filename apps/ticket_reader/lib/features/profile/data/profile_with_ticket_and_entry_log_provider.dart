import 'package:common_data/entry_log.dart';
import 'package:common_data/profile.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_with_ticket_and_entry_log_provider.g.dart';

@riverpod
Future<ProfileWithTicketAndEntryLog?> profileWithTicketAndEntryLogUserId(
  Ref ref,
  String userId,
) async =>
    ref.read(profileRepositoryProvider).fetchProfileWithTicketAndEntryLog(
          userId: userId,
        );

@riverpod
Future<ProfileWithTicketAndEntryLog?> profileWithTicketAndEntryLogTicketId(
  Ref ref,
  String ticketId,
) async =>
    ref.read(profileRepositoryProvider).fetchProfileWithTicketAndEntryLog(
          ticketId: ticketId,
        );
