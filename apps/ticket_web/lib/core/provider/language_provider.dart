import 'package:collection/collection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_web/core/provider/shared_preferences.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

part 'language_provider.g.dart';

@Riverpod(keepAlive: true)
List<AppLocale> supportedLocales(SupportedLocalesRef ref) =>
    LocaleSettings.instance.translationMap.keys.toList();

@Riverpod(keepAlive: true)
class LanguageProvider extends _$LanguageProvider {
  @override
  AppLocale build() {
    final supportedLocales = ref.watch(supportedLocalesProvider);
    final currentSavedLanguageCode = _currentSavedLanguageCode;
    if (currentSavedLanguageCode != null) {
      final matchedLocale = supportedLocales.firstWhereOrNull(
        (locale) => locale.languageCode == currentSavedLanguageCode,
      );
      if (matchedLocale != null) {
        return matchedLocale;
      }
    }
    return AppLocaleUtils.findDeviceLocale();
  }

  Future<void> setLanguage(AppLocale locale) async {
    LocaleSettings.setLocale(locale);
    state = locale;
    await ref
        .read(sharedPreferencesProvider)
        .setString(_prefsKey, locale.languageCode);
  }

  String? get _currentSavedLanguageCode =>
      ref.read(sharedPreferencesProvider).getString(_prefsKey);

  static const _prefsKey = 'language_code';
}
