import 'package:flutter/material.dart';

/// コンテンツのマージンを設定するコンポーネント
/// - コンテンツ表示領域の最大幅が1024pxのものと768pxのものがある
/// - 最小のマージンは24px
class ContentsMargin extends StatelessWidget {
  const ContentsMargin._({
    required double maxContentsWidth,
    required this.child,
  }) : _maxContentsWidth = maxContentsWidth;

  factory ContentsMargin.narrow({required Widget child}) {
    return ContentsMargin._(
      maxContentsWidth: 1024,
      child: child,
    );
  }

  factory ContentsMargin.wide({required Widget child}) {
    return ContentsMargin._(
      maxContentsWidth: 768,
      child: child,
    );
  }

  final Widget child;
  final double _maxContentsWidth;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final width = size.width;

    const minMargin = 24.0;

    final margin = width >= _maxContentsWidth
        ? (width - _maxContentsWidth) / 2
        : minMargin;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: margin),
      child: child,
    );
  }
}
