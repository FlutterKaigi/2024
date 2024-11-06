import 'package:app_cores_designsystem/common_assets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GithubLogo extends StatelessWidget {
  const GithubLogo({
    super.key,
    this.size = 24,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;

    return switch (brightness) {
      Brightness.light => CommonAssets.logo.githubLogoLight.svg(
          width: size,
          height: size,
        ),
      Brightness.dark => CommonAssets.logo.githubLogoDark.svg(
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
