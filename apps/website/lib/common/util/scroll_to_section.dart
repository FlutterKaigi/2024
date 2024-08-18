import 'package:flutter/material.dart';

Future<void> scrollToSection(
  GlobalObjectKey key,
  BuildContext context,
) async {
  final displayHeight = MediaQuery.sizeOf(context).height;
  final targetWidgetHeight = key.currentContext!.size!.height;
  final alignment = kToolbarHeight / (displayHeight - targetWidgetHeight);

  return Scrollable.ensureVisible(
    key.currentContext!,
    alignment: alignment,
    curve: Curves.easeOutCirc,
    duration: const Duration(milliseconds: 500),
  );
}
