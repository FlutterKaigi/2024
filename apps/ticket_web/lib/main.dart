import 'package:common_data/supabase_initializer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ticket_web/app.dart';
import 'package:ticket_web/core/provider/environment.dart';
import 'package:ticket_web/core/provider/shared_preferences.dart';
import 'package:ticket_web/core/util/setup_web_environment.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupWebEnvironment();

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

  final environmentValues = Environment.fromEnvironmentValues();

  final supabaseInitializer = SupabaseInitializer(
    url: environmentValues.supabaseUrl,
    anonKey: environmentValues.supabaseAnonKey,
  );

  final results = await (
    supabaseInitializer.initialize(),
    SharedPreferences.getInstance(),
  ).wait;

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(results.$2),
      ],
      child: const App(),
    ),
  );
}
