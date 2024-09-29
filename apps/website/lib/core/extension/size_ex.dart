import 'package:flutter/material.dart';

extension SizeEx on Size {
  bool get isMobile => width < 768;
}
