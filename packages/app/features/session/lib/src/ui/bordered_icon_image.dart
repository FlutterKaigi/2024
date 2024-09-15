import 'package:app_cores_designsystem/ui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BorderedIconImage extends StatelessWidget {
  const BorderedIconImage({
    required this.size,
    super.key,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.secondary,
        ),
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage(
            'https://via.placeholder.com/$size',
          ),
          onError: (exception, stackTrace) => MainLogo(size: size),
        ),
      ),
      child: SizedBox(
        height: size,
        width: size,
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DoubleProperty('size', size));
  }
}
