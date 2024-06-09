import 'package:conference_2024_app/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:packages_app_cores_navigation/about/navigators.dart';

class AboutPageNavigatorImpl implements AboutPageNavigator {
  @override
  void goDebugPage(BuildContext context) {
    const DebugPageRoute().go(context);
  }
}
