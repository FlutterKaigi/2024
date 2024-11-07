import 'package:app_features_session/src/data/model/timeline_item.dart';
import 'package:app_features_session/src/ui/base_chip.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// セッションの種類を表示するチップ
///
/// セッション関連のWidgetにおいて、該当するセッションがどの種類であるかを示すためのWidget。
class SessionTypeChip extends StatelessWidget {
  const SessionTypeChip({required this.session, super.key});

  final TimelineItemSession session;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final type = () {
      if (session.isLightningTalk) {
        return _SessionType.lightningTalk;
      }
      if (session.sponsors.isNotEmpty) {
        return _SessionType.sponsorTalk;
      }
      return _SessionType.regularTalk;
    }();

    final fillColor = switch (type) {
      _SessionType.regularTalk => theme.colorScheme.tertiaryFixedDim,
      _SessionType.sponsorTalk => theme.colorScheme.primaryFixedDim,
      _SessionType.lightningTalk => theme.colorScheme.secondaryFixedDim,
    };

    final label = switch (type) {
      _SessionType.regularTalk => 'Regular Talk',
      _SessionType.sponsorTalk => 'Sponsored Talk',
      _SessionType.lightningTalk => 'Lightning Talk',
    };

    final labelColor = switch (type) {
      _SessionType.regularTalk => theme.colorScheme.onTertiaryFixedVariant,
      _SessionType.sponsorTalk => theme.colorScheme.onPrimaryFixedVariant,
      _SessionType.lightningTalk => theme.colorScheme.onSecondaryFixedVariant,
    };

    return BaseChip(
      label: label,
      labelColor: labelColor,
      fillColor: fillColor,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty<TimelineItemSession>('session', session));
  }
}

enum _SessionType {
  regularTalk,
  sponsorTalk,
  lightningTalk,
}
