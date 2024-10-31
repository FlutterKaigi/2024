import 'package:app_features_session/src/ui/base_chip.dart';
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
    final fillColor = switch (venue.name) {
      'A Dash' => _roomAColor,
      'B Dash' => _roomBColor,
      _ => _roomAColor,
    };

    return BaseChip(
      label: venue.name,
      labelColor: _labelColor,
      fillColor: fillColor,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<SessionVenue>('venue', venue));
  }
}
