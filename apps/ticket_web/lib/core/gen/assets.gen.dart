/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsDocsGen {
  const $AssetsDocsGen();

  /// File path: assets/docs/pre_purchase_warning.md
  String get prePurchaseWarning => 'assets/docs/pre_purchase_warning.md';

  /// Directory path: assets/docs
  String get path => 'assets/docs';

  /// List of all assets
  List<String> get values => [prePurchaseWarning];
}

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// Directory path: assets/fonts/NotoSansJP
  $AssetsFontsNotoSansJPGen get notoSansJP => const $AssetsFontsNotoSansJPGen();

  /// Directory path: assets/fonts/Poppins
  $AssetsFontsPoppinsGen get poppins => const $AssetsFontsPoppinsGen();

  /// Directory path: assets/fonts
  String get path => 'assets/fonts';
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/icon.webp
  AssetGenImage get icon => const AssetGenImage('assets/images/icon.webp');

  /// Directory path: assets/images/sns
  $AssetsImagesSnsGen get sns => const $AssetsImagesSnsGen();

  /// Directory path: assets/images/svg
  $AssetsImagesSvgGen get svg => const $AssetsImagesSvgGen();

  /// Directory path: assets/images
  String get path => 'assets/images';

  /// List of all assets
  List<AssetGenImage> get values => [icon];
}

class $AssetsFontsNotoSansJPGen {
  const $AssetsFontsNotoSansJPGen();

  /// File path: assets/fonts/NotoSansJP/OFL.txt
  String get ofl => 'assets/fonts/NotoSansJP/OFL.txt';

  /// Directory path: assets/fonts/NotoSansJP
  String get path => 'assets/fonts/NotoSansJP';

  /// List of all assets
  List<String> get values => [ofl];
}

class $AssetsFontsPoppinsGen {
  const $AssetsFontsPoppinsGen();

  /// File path: assets/fonts/Poppins/OFL.txt
  String get ofl => 'assets/fonts/Poppins/OFL.txt';

  /// Directory path: assets/fonts/Poppins
  String get path => 'assets/fonts/Poppins';

  /// List of all assets
  List<String> get values => [ofl];
}

class $AssetsImagesSnsGen {
  const $AssetsImagesSnsGen();

  /// File path: assets/images/sns/discord.svg.vec
  SvgGenImage get discordSvg =>
      const SvgGenImage.vec('assets/images/sns/discord.svg.vec');

  /// File path: assets/images/sns/github.svg.vec
  SvgGenImage get githubSvg =>
      const SvgGenImage.vec('assets/images/sns/github.svg.vec');

  /// File path: assets/images/sns/medium.svg.vec
  SvgGenImage get mediumSvg =>
      const SvgGenImage.vec('assets/images/sns/medium.svg.vec');

  /// File path: assets/images/sns/x.svg.vec
  SvgGenImage get xSvg => const SvgGenImage.vec('assets/images/sns/x.svg.vec');

  /// Directory path: assets/images/sns
  String get path => 'assets/images/sns';

  /// List of all assets
  List<SvgGenImage> get values => [discordSvg, githubSvg, mediumSvg, xSvg];
}

class $AssetsImagesSvgGen {
  const $AssetsImagesSvgGen();

  /// File path: assets/images/svg/sign_in_with_google.svg.vec
  SvgGenImage get signInWithGoogleSvg =>
      const SvgGenImage.vec('assets/images/svg/sign_in_with_google.svg.vec');

  /// Directory path: assets/images/svg
  String get path => 'assets/images/svg';

  /// List of all assets
  List<SvgGenImage> get values => [signInWithGoogleSvg];
}

class Assets {
  Assets._();

  static const $AssetsDocsGen docs = $AssetsDocsGen();
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

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
