import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ScreenSizeProvider extends InheritedWidget {
  const ScreenSizeProvider({
    required this.screenSize,
    required super.child,
    super.key,
  });

  final Size screenSize;

  static ScreenSizeProvider? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ScreenSizeProvider>();
  }

  static ScreenSizeProvider of(BuildContext context) {
    final screenSizeProvider = maybeOf(context);
    assert(
      screenSizeProvider != null,
      'ScreenSizeProvider not found in context',
    );
    return screenSizeProvider!;
  }

  bool get isMobile => screenSize.width < 960;

  @override
  bool updateShouldNotify(covariant ScreenSizeProvider oldWidget) =>
      oldWidget.screenSize != screenSize;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Size>('screenSize', screenSize));
    properties.add(DiagnosticsProperty<bool>('isMobile', isMobile));
  }
}
