import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MapItemWidget extends StatelessWidget {
  const MapItemWidget({
    required this.icon,
    required this.itemTitle,
    super.key,
    this.onTap,
  });
  final IconData icon;
  final String itemTitle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon),
          const Gap(12),
          Text(
            itemTitle,
            style: theme.textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('itemTitle', itemTitle));
    properties.add(ObjectFlagProperty<void Function()?>.has('onTap', onTap));
    properties.add(DiagnosticsProperty<IconData>('icon', icon));
  }
}
