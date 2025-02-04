import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SponsorLogo extends StatelessWidget {
  const SponsorLogo({
    required this.logoUri,
    this.width,
    this.height,
    this.onErrorBuilder,
    super.key,
  });

  final Uri logoUri;

  final double? width;
  final double? height;

  final Widget Function(BuildContext context)? onErrorBuilder;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      logoUri.toString(),
      package: 'common_data',
      width: width,
      height: height,
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) =>
          onErrorBuilder?.call(context) ??
          Icon(
            Icons.error,
            color: Colors.red,
            size: width,
          ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DoubleProperty('width', width));
    properties.add(DoubleProperty('height', height));
    properties.add(
      ObjectFlagProperty<Widget Function(BuildContext context)?>.has(
        'onErrorBuilder',
        onErrorBuilder,
      ),
    );
    properties.add(DiagnosticsProperty<Uri>('logoUri', logoUri));
  }
}
