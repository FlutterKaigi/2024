import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_preferences_instance.g.dart';

late SharedPreferences _sharedPreferences;

/// [SharedPreferences] instance initialization.
Future<void> initSharedPreferencesInstance({
  SharedPreferences? preferences,
}) async {
  _sharedPreferences = preferences ?? await SharedPreferences.getInstance();
}

/// This provider requires calling [initSharedPreferencesInstance] in advance.
@riverpod
SharedPreferences sharedPreferencesInstance(
  SharedPreferencesInstanceRef ref,
) =>
    _sharedPreferences;
