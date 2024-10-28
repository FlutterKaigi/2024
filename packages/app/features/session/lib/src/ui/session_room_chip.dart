import 'package:common_data/session.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

const _roomAColor = Color(0xFFFFBDBD);
const _roomBColor = Color(0xFFE3E1FF);
const _labelColor = Color(0xFF3F484A);

/// セッションに対してルーム情報を表示するチップ
///
/// セッション関連のWidgetにおいて、該当するセッションがどのルームで行われるかを表示するためのWidget。
class SessionRoomChip extends StatelessWidget {
  const SessionRoomChip({required this.venue, super.key});

  final SessionVenue venue;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final fillColor = switch (venue.name) {
      'A Dash' => _roomAColor,
      'B Dash' => _roomBColor,
      _ => _roomAColor,
    };

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      height: 28,
      decoration: BoxDecoration(
        color: fillColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Text(
          venue.name,
          style: theme.textTheme.labelSmall?.copyWith(
            color: _labelColor,
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<SessionVenue>('venue', venue));
  }
}
