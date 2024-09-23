import 'package:flutter/material.dart';
import 'package:ticket_web/core/extension/is_mobile.dart';

/// レスポンシブ対応のコンテナ
class ResponsiveContentContainer extends StatelessWidget {
  const ResponsiveContentContainer({
    required this.child,
    this.padding = 16,
    super.key,
  });

  final Widget child;

  /// 左右の余白
  final double padding;

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

    if (padding == 0) {
      return inner;
    }
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: inner,
    );
  }
}
