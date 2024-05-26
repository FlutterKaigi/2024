import 'package:conference_2024_website/ui/router/router.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:conference_2024_website/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GoogleFonts.pendingFonts(
    allFonts,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: const Locale('ja'),
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      theme: lightTheme(),
      themeMode: ThemeMode.light,
    );
  }
}
