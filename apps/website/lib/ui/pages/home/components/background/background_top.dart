import 'package:flutter/material.dart';
import 'package:vector_graphics/vector_graphics.dart';

class BackgroundTop extends StatelessWidget {
  const BackgroundTop({super.key});

  @override
  Widget build(BuildContext context) {
    const svg = 'assets/svg/bg_top.svg';
    const imageSize = (x: 1541, y: 1196);
    final size = MediaQuery.sizeOf(context);

    const loader = AssetBytesLoader(svg);
    return VectorGraphic(
      width: size.width,
      height: size.width * imageSize.y / imageSize.x,
      loader: loader,
    );
  }
}
