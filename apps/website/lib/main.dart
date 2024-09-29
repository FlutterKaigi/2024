// ignore_for_file: do_not_use_environment

import 'package:common_data/supabase_initializer.dart';
import 'package:conference_2024_website/core/app.dart';
import 'package:conference_2024_website/core/util/setup_web_environment.dart';
import 'package:conference_2024_website/gen/i18n/strings.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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

  setupWebEnvironment();

  LocaleSettings.useDeviceLocale();

  final supabaseInitializer = SupabaseInitializer(
    url: const String.fromEnvironment('SUPABASE_URL'),
    anonKey: const String.fromEnvironment('SUPABASE_ANON_KEY'),
  );

  await supabaseInitializer.initialize();

  runApp(
    ProviderScope(
      child: TranslationProvider(
        child: const App(),
      ),
    ),
  );
}
