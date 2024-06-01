import 'package:conference_2024_website/l10n/l10n.dart';
import 'package:conference_2024_website/ui/router/router.dart';
import 'package:conference_2024_website/ui/theme/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LicenseRegistry.addLicense(() async* {
    final licenseFiles = [
      'assets/fonts/NotoSansJP/OFL.txt',
      'assets/fonts/Poppins/OFL.txt',
    ];
    for (final licenseFile in licenseFiles) {
      final license = await rootBundle.loadString(licenseFile);
      yield LicenseEntryWithLineBreaks(['google_fonts'], license);
    }
  });
  runApp(
    const MainApp(),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
      locale: const Locale('ja'),
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      theme: lightTheme(),
      themeMode: ThemeMode.light,
    );
  }
}
