/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// Directory path: assets/fonts/NotoSansJP
  $AssetsFontsNotoSansJPGen get notoSansJP => const $AssetsFontsNotoSansJPGen();

  /// Directory path: assets/fonts/Poppins
  $AssetsFontsPoppinsGen get poppins => const $AssetsFontsPoppinsGen();
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/icon.webp
  AssetGenImage get icon => const AssetGenImage('assets/images/icon.webp');

  /// Directory path: assets/images/sns
  $AssetsImagesSnsGen get sns => const $AssetsImagesSnsGen();

  /// List of all assets
  List<AssetGenImage> get values => [icon];
}

class $AssetsFontsNotoSansJPGen {
  const $AssetsFontsNotoSansJPGen();

  /// File path: assets/fonts/NotoSansJP/OFL.txt
  String get ofl => 'assets/fonts/NotoSansJP/OFL.txt';

  /// List of all assets
  List<String> get values => [ofl];
}

class $AssetsFontsPoppinsGen {
  const $AssetsFontsPoppinsGen();

  /// File path: assets/fonts/Poppins/OFL.txt
  String get ofl => 'assets/fonts/Poppins/OFL.txt';

  /// List of all assets
  List<String> get values => [ofl];
}

class $AssetsImagesSnsGen {
  const $AssetsImagesSnsGen();

  /// File path: assets/images/sns/discord.svg
  String get discord => 'assets/images/sns/discord.svg';

  /// File path: assets/images/sns/github.svg
  String get github => 'assets/images/sns/github.svg';

  /// File path: assets/images/sns/medium.svg
  String get medium => 'assets/images/sns/medium.svg';

  /// File path: assets/images/sns/x.svg
  String get x => 'assets/images/sns/x.svg';

  /// List of all assets
  List<String> get values => [discord, github, medium, x];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
