import 'package:flutter/material.dart';
import 'package:ticket_web/core/extension/is_mobile.dart';

/// レスポンシブ対応のコンテナ
class ResponsiveContentContainer extends StatelessWidget {
  const ResponsiveContentContainer({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final isMobile = size.isMobile;

    final Widget inner;
    if (isMobile) {
      inner = child;
    } else {
      inner = Center(
        child: SizedBox(
          width: desktopThreshold,
          child: child,
        ),
      );
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 0 : 16),
      child: inner,
    );
  }
}
