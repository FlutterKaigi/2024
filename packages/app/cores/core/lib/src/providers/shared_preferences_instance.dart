import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_preferences_instance.g.dart';

@riverpod
Future<SharedPreferences> sharedPreferencesInstance(
  SharedPreferencesInstanceRef ref,
) async {
  return SharedPreferences.getInstance();
}
