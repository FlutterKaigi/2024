import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_web/core/provider/shared_preferences.dart';

part 'invited_promotion_selected_sponsor.g.dart';

@Riverpod(keepAlive: true)
class InvitedPromotionSelectedSponsor
    extends _$InvitedPromotionSelectedSponsor {
  @override
  String? build() {
    final prefs = ref.watch(sharedPreferencesProvider);
    return prefs.getString(_key);
  }

  Future<void> save(String? value) async {
    state = value;
    final prefs = ref.read(sharedPreferencesProvider);
    if (value == null) {
      await prefs.remove(_key);
      return;
    }
    await prefs.setString(_key, value);
  }

  static const String _key = 'invited_promotion_selected_sponsor';
}
