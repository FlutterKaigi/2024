import 'dart:async';

import 'package:common_data/entry_log.dart';
import 'package:common_data/ticket.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:ticket_reader/core/extension/ticket.dart';
import 'package:two_dimensional_scrollables/two_dimensional_scrollables.dart';

class ProfileTable extends StatelessWidget {
  const ProfileTable({
    required this.profiles,
    required this.totalCount,
    required this.onLoadMore,
    required this.onRefresh,
    super.key,
  });

  final List<ProfileWithTicketAndEntryLog> profiles;
  final int totalCount;
  final void Function() onLoadMore;
  final FutureOr<void> Function() onRefresh;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    if (profiles.isEmpty) {
      return Center(
        child: Card(
          color: theme.colorScheme.primaryContainer,
          child: DefaultTextStyle.merge(
            style: theme.textTheme.titleMedium!.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
              fontWeight: FontWeight.bold,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.info,
                    size: 36,
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                  const SizedBox(width: 8),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Flexible(
                        child: Text(
                          'データがありません',
                        ),
                      ),
                      Flexible(
                        child: Text(
                          '他の検索条件を試してみてください',
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    final borderDecoration = TableSpanDecoration(
      border: TableSpanBorder(
        trailing: BorderSide(color: theme.dividerColor),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            '$totalCount件見つかりました (${profiles.length}件取得済み)',
            style: GoogleFonts.jetBrainsMono(),
          ),
        ),
        Expanded(
          child: Card(
            child: RefreshIndicator.adaptive(
              onRefresh: () async => onRefresh,
              child: NotificationListener<ScrollNotification>(
                onNotification: (notification) {
                  // 全体の90%以上スクロールしたらリフレッシュ
                  if (notification.metrics.pixels >
                      notification.metrics.maxScrollExtent * 0.9) {
                    onLoadMore();
                    return true;
                  }
                  return true;
                },
                child: TableView.builder(
                  verticalDetails: const ScrollableDetails(
                    direction: AxisDirection.down,
                    physics: AlwaysScrollableScrollPhysics(),
                  ),
                  columnBuilder: (index) {
                    final column = _Column.values[index];
                    return TableSpan(
                      foregroundDecoration:
                          index == 0 ? borderDecoration : null,
                      extent: FixedTableSpanExtent(column.width),
                    );
                  },
                  rowBuilder: (index) {
                    return TableSpan(
                      foregroundDecoration:
                          index == 0 ? borderDecoration : null,
                      extent: const FixedTableSpanExtent(50),
                    );
                  },
                  cellBuilder: (context, vicinity) {
                    final column = _Column.values[vicinity.column];

                    if (vicinity.row == 0) {
                      return TableViewCell(
                        child: Center(
                          child: Text(
                            column.label,
                            style: theme.textTheme.bodySmall?.copyWith(
                              fontFamily:
                                  GoogleFonts.jetBrainsMono().fontFamily,
                            ),
                          ),
                        ),
                      );
                    }

                    final profile = profiles[vicinity.row - 1];

                    final child = InkWell(
                      onTap: () async {
                        unawaited(
                          Clipboard.setData(
                            ClipboardData(text: profile.id),
                          ),
                        );
                        unawaited(
                          HapticFeedback.lightImpact(),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('クリップボードにコピーしました')),
                        );
                      },
                      onDoubleTap: () async {
                        // TODO(YumNumm): プロフィール画面に遷移する
                      },
                      child: ColoredBox(
                        color: column
                                .colorAccessor(profile)
                                ?.withValues(alpha: 0.5) ??
                            theme.colorScheme.surfaceContainer,
                        child: Center(
                          child: Text(
                            vicinity.row == 0
                                ? column.label
                                : column.accessor(profile),
                            style: theme.textTheme.bodySmall?.copyWith(
                              fontFamily:
                                  GoogleFonts.jetBrainsMono().fontFamily,
                            ),
                          ),
                        ),
                      ),
                    );
                    return TableViewCell(
                      child: child,
                    );
                  },
                  rowCount: profiles.length + 1,
                  columnCount: _Column.values.length,
                  pinnedRowCount: 1,
                  primary: true,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

enum _Column {
  id('ID', 70),
  email('メールアドレス', 200),
  ticketType('チケットタイプ', 140),
  entryLog('入場履歴', 140),
  ;

  const _Column(this.label, this.width);
  final String label;
  final double width;

  String Function(ProfileWithTicketAndEntryLog t) get accessor =>
      switch (this) {
        id => (t) => t.id.split('-').first,
        email => (t) => t.email,
        ticketType => (t) => t.ticket?.type.displayName ?? '未登録',
        entryLog => (t) => t.entryLog != null
            ? DateFormat('MM/dd HH:mm').format(t.entryLog!.createdAt.toLocal())
            : '未入場',
      };

  Color? Function(ProfileWithTicketAndEntryLog t) get colorAccessor =>
      switch (this) {
        id => (t) => null,
        email => (t) => null,
        ticketType => (t) => switch (t.ticket?.type) {
              null => null,
              TicketType.sponsorBooth => Colors.blue,
              TicketType.sponsorInvited => Colors.green,
              TicketType.individualSponsor => Colors.orange,
              TicketType.regularSpeaker => Colors.purple,
              TicketType.sponsorSpeaker => Colors.red,
              TicketType.general => Colors.grey,
            },
        entryLog => (t) => null,
      };
}
