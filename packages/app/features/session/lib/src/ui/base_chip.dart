import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BaseChip extends StatelessWidget {
  const BaseChip({
    required this.label,
    required this.labelColor,
    required this.fillColor,
    super.key,
  });

  final String label;
  final Color labelColor;
  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scaler = MediaQuery.textScalerOf(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: scaler.scale(12)),
      height: scaler.scale(28),
      decoration: BoxDecoration(
        color: fillColor,
        borderRadius: BorderRadius.circular(scaler.scale(12)),
      ),
      child: Center(
        child: Text(
          label,
          style: theme.textTheme.labelSmall?.copyWith(
            color: labelColor,
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('label', label));
    properties.add(ColorProperty('fillColor', fillColor));
    properties.add(ColorProperty('labelColor', labelColor));
  }
}
