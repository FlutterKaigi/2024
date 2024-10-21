import 'package:common_data/staff.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:vector_graphics/vector_graphics.dart';

class SnsIcon extends StatelessWidget {
  const SnsIcon({
    required this.snsType,
    this.size = 24,
    this.color,
    super.key,
  });

  final SnsType snsType;
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final icon = switch (snsType) {
      SnsType.x => const AssetBytesLoader('assets/svg/products/x.svg'),
      SnsType.github =>
        const AssetBytesLoader('assets/svg/products/github.svg'),
      SnsType.discord =>
        const AssetBytesLoader('assets/svg/products/discord.svg'),
      SnsType.medium =>
        const AssetBytesLoader('assets/svg/products/medium.svg'),
      SnsType.qiita => const AssetBytesLoader('assets/svg/products/qiita.svg'),
      SnsType.zenn => const AssetBytesLoader('assets/svg/products/zenn.svg'),
      SnsType.note => const AssetBytesLoader('assets/svg/products/note.svg'),
      SnsType.other => null,
    };
    if (icon == null) {
      return Icon(
        Icons.link,
        size: size,
      );
    }
    return VectorGraphic(
      loader: icon,
      height: size,
      width: size,
      colorFilter: color != null
          ? ColorFilter.mode(
              color!,
              BlendMode.srcIn,
            )
          : null,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<SnsType>('snsType', snsType));
    properties.add(DoubleProperty('size', size));
    properties.add(ColorProperty('color', color));
  }
}
