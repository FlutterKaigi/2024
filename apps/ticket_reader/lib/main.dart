import 'package:common_data/supabase_initializer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_reader/app.dart';
import 'package:ticket_reader/core/provider/environment.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // AndroidのEdge-to-Edgeを有効にする
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  final container = ProviderContainer();

  final environment = container.read(environmentProvider);

  final supabaseInitializer = SupabaseInitializer(
    url: environment.supabaseUrl,
    anonKey: environment.supabaseAnonKey,
  );

  await supabaseInitializer.initialize();

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const App(),
    ),
  );
}
