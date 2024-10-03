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

class $AssetsLogoGen {
  const $AssetsLogoGen();

  /// File path: assets/logo/github_logo.svg
  SvgGenImage get githubLogo =>
      const SvgGenImage('assets/logo/github_logo.svg');

  /// File path: assets/logo/main_logo.svg
  SvgGenImage get mainLogo => const SvgGenImage('assets/logo/main_logo.svg');

  /// File path: assets/logo/main_logo_dark.svg
  SvgGenImage get mainLogoDark =>
      const SvgGenImage('assets/logo/main_logo_dark.svg');

  /// File path: assets/logo/main_logo_light.svg
  SvgGenImage get mainLogoLight =>
      const SvgGenImage('assets/logo/main_logo_light.svg');

  /// File path: assets/logo/medium_logo.svg
  SvgGenImage get mediumLogo =>
      const SvgGenImage('assets/logo/medium_logo.svg');

  /// File path: assets/logo/x_logo.svg
  SvgGenImage get xLogo => const SvgGenImage('assets/logo/x_logo.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [githubLogo, mainLogo, mainLogoDark, mainLogoLight, mediumLogo, xLogo];
}

class Assets {
  Assets._();

  static const String package = 'app_cores_designsystem';

  static const $AssetsLogoGen logo = $AssetsLogoGen();
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

  static const String package = 'app_cores_designsystem';

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    @Deprecated('Do not specify package for a generated library asset')
    String? package = package,
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

  String get keyName => 'packages/app_cores_designsystem/$_assetName';
}
