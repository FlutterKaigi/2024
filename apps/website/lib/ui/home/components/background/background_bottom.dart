import 'package:flutter/material.dart';
import 'package:vector_graphics/vector_graphics.dart';

class BackgroundBottom extends StatelessWidget {
  const BackgroundBottom({super.key});

  @override
  Widget build(BuildContext context) {
    const svg = 'assets/svg/bg_bottom.svg';
    const loader = AssetBytesLoader(svg);
    const imageSize = (
      x: 1440,
      y: 673,
    );
    final size = MediaQuery.sizeOf(context);
    return VectorGraphic(
      loader: loader,
      width: size.width,
      height: size.width * imageSize.y / imageSize.x,
    );
  }
}
