import 'package:common_data/entry_log.dart';
import 'package:flutter/material.dart';
import 'package:ticket_reader/pages/components/user_search/chip/user_search_email_filter_chip.dart';
import 'package:ticket_reader/pages/components/user_search/chip/user_search_has_entry_log_chip.dart';
import 'package:ticket_reader/pages/components/user_search/chip/user_search_has_ticket_chip.dart';
import 'package:ticket_reader/pages/components/user_search/chip/user_search_sort_chip.dart';
import 'package:ticket_reader/pages/components/user_search/chip/user_search_user_id_filter_chip.dart';

class UserSearchParameter extends StatelessWidget {
  const UserSearchParameter({
    required this.argument,
    required this.onArgumentChanged,
    super.key,
  });

  final ProfileWithTicketAndEntryLogArgument argument;
  final void Function(ProfileWithTicketAndEntryLogArgument) onArgumentChanged;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicHeight(
        child: Row(
          children: [
            UserSearchSortChip(
              type: argument.sortBy,
              order: argument.sortOrder,
              onChanged: (sort, order) => onArgumentChanged(
                argument.copyWith(sortBy: sort, sortOrder: order),
              ),
            ),
            const SizedBox(width: 8),
            const VerticalDivider(),
            const SizedBox(width: 8),
            UserSearchHasTicketChip(
              hasTicket: argument.hasTicket,
              onChanged: (value) => onArgumentChanged(
                argument.copyWith(hasTicket: value),
              ),
            ),
            const SizedBox(width: 8),
            UserSearchHasEntryLogChip(
              hasEntryLog: argument.hasEntryLog,
              onChanged: (value) => onArgumentChanged(
                argument.copyWith(hasEntryLog: value),
              ),
            ),
            const SizedBox(width: 8),
            UserSearchUserIdFilterChip(
              userIdContains: argument.userIdContains,
              onChanged: (value) => onArgumentChanged(
                argument.copyWith(userIdContains: value),
              ),
            ),
            const SizedBox(width: 8),
            UserSearchEmailFilterChip(
              emailContains: argument.emailContains,
              onChanged: (value) => onArgumentChanged(
                argument.copyWith(emailContains: value),
              ),
            ),
            const SizedBox(width: 8),
            if (argument.hasTicket != null ||
                argument.hasEntryLog != null ||
                argument.userIdContains != null ||
                argument.emailContains != null)
              IconButton(
                onPressed: () async => onArgumentChanged(
                  const ProfileWithTicketAndEntryLogArgument(),
                ),
                icon: const Icon(Icons.clear),
              ),
          ],
        ),
      ),
    );
  }
}
