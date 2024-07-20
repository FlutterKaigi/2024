import 'package:supabase_flutter/supabase_flutter.dart';

final class SupabaseInitializer {
  SupabaseInitializer({
    required this.url,
    required this.anonKey,
  });

  final String url;
  final String anonKey;

  Future<void> initialize() => Supabase.initialize(
        url: url,
        anonKey: anonKey,
      );
}
