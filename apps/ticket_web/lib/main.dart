// MEMO(YumNumm): `String.fromEnvironment` の警告を無視する
// ignore_for_file: do_not_use_environment

import 'package:common_data/supabase_initializer.dart';
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

  final supabaseInitializer = SupabaseInitializer(
    url: const String.fromEnvironment('SUPABASE_URL'),
    anonKey: const String.fromEnvironment('SUPABASE_ANON_KEY'),
  );

  await supabaseInitializer.initialize();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
