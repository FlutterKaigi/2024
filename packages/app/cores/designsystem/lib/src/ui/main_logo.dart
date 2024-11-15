import 'package:app_cores_designsystem/common_assets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MainLogo extends StatelessWidget {
  const MainLogo({
    super.key,
    this.size = 24,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;

    return switch (brightness) {
      Brightness.light => CommonAssets.logo.mainLogoLight.svg(
          width: size,
          height: size,
          excludeFromSemantics: true,
        ),
      Brightness.dark => CommonAssets.logo.mainLogoDark.svg(
          width: size,
          height: size,
          excludeFromSemantics: true,
        ),
    };
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DoubleProperty('size', size));
  }
}
