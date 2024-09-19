import 'package:flutter/material.dart';

/// セッションに対してルーム情報を表示するチップ
///
/// セッション関連のWidgetにおいて、該当するセッションがどのルームで行われるかを表示するためのWidget。
class SessionRoomChip extends StatelessWidget {
  const SessionRoomChip({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      height: 28,
      decoration: BoxDecoration(
        color: theme.colorScheme.tertiaryFixedDim,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Text(
          'Room1',
          style: theme.textTheme.labelSmall?.copyWith(
            color: theme.colorScheme.onTertiaryFixed,
          ),
        ),
      ),
    );
  }
}
