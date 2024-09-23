import 'package:flutter/material.dart';

extension SizeExtension on Size {
  bool get isMobile => width < desktopThreshold;
}

const double desktopThreshold = 960;
