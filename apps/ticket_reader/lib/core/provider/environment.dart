// ignore_for_file: do_not_use_environment

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'environment.freezed.dart';
part 'environment.g.dart';

@Riverpod(keepAlive: true)
Environment environment(Ref ref) {
  return Environment.fromEnvironmentValues();
}

enum EnvironmentType {
  development,
  staging,
  production,
  ;
}

@freezed
class Environment with _$Environment {
  const factory Environment({
    required String supabaseUrl,
    required String supabaseAnonKey,
  }) = _Environment;

  factory Environment.fromEnvironmentValues() {
    const result = Environment(
      supabaseUrl: String.fromEnvironment('SUPABASE_URL'),
      supabaseAnonKey: String.fromEnvironment('SUPABASE_ANON_KEY'),
    );

    assert(result.supabaseUrl.isNotEmpty, 'SUPABASE_URL is empty');
    assert(result.supabaseAnonKey.isNotEmpty, 'SUPABASE_ANON_KEY is empty');
    return result;
  }
}
