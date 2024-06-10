import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'debug_page_navigator.g.dart';

@riverpod
external DebugPageNavigator debugPageNavigator(DebugPageNavigatorRef ref);

abstract interface class DebugPageNavigator {
  void goAnyPage(BuildContext context);
}
