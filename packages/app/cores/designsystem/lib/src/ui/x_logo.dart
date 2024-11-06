import 'package:app_cores_designsystem/common_assets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class XLogo extends StatelessWidget {
  const XLogo({
    super.key,
    this.size = 24,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;

    return switch (brightness) {
      Brightness.light => CommonAssets.logo.xLogoLight.svg(
          width: size,
          height: size,
        ),
      Brightness.dark => CommonAssets.logo.xLogoDark.svg(
          width: size,
          height: size,
        ),
    };
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DoubleProperty('size', size));
  }
}
