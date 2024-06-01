import 'package:flutter/material.dart';

/// コンテンツのマージンを設定するコンポーネント
/// - コンテンツ表示領域の最大幅は1024px
/// - 最小のマージンは16px
class ContentsMargin extends StatelessWidget {
  const ContentsMargin({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final width = size.width;

    const minMargin = 16.0;
    const maxContentsWidth = 1024.0;

    final margin = switch (width) {
      >= maxContentsWidth => (width - maxContentsWidth) / 2,
      _ => minMargin,
    };

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: margin),
      child: child,
    );
  }
}
