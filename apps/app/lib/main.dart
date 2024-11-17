// ignore_for_file: do_not_use_environment

import 'dart:io';

import 'package:app_cores_core/providers.dart';
import 'package:common_data/supabase_initializer.dart';
import 'package:conference_2024_app/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  final supabaseUrl = switch (Platform.isAndroid) {
    // Androidの場合、エミュレーターでは localhost ではなく 10.0.2.2 を使用しなければならない
    // したがって、SUPABASE_URL に localhost の文字があれば 10.0.2.2 に変換する
    true => const String.fromEnvironment('SUPABASE_URL')
        .replaceFirst('localhost', '10.0.2.2'),
    false => const String.fromEnvironment('SUPABASE_URL'),
  };
  final supabaseInitializer = SupabaseInitializer(
    url: supabaseUrl,
    anonKey: const String.fromEnvironment('SUPABASE_ANON_KEY'),
  );
  await supabaseInitializer.initialize();

  // Firebase Initializer
  final apiKey = switch (Platform.isAndroid) {
    true => const String.fromEnvironment('FIREBASE_ANDROID_API_KEY'),
    false => const String.fromEnvironment('FIREBASE_IOS_API_KEY'),
  };
  final appId = switch (Platform.isAndroid) {
    true => const String.fromEnvironment('FIREBASE_ANDROID_APP_ID'),
    false => const String.fromEnvironment('FIREBASE_IOS_APP_ID'),
  };
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: apiKey,
      appId: appId,
      messagingSenderId:
          const String.fromEnvironment('FIREBASE_MESSAGING_SENDER_ID'),
      projectId: const String.fromEnvironment('FIREBASE_PROJECT_ID'),
    ),
  );

  await initSharedPreferencesInstance();
  await initPackageInfoInstance();

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
