import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_web/core/provider/shared_preferences.dart';

part 'invited_promotion_selected_sponsor.g.dart';

@Riverpod(keepAlive: true)
class InvitedPromotionSelectedSponsor
    extends _$InvitedPromotionSelectedSponsor {
  @override
  int? build() {
    final prefs = ref.watch(sharedPreferencesProvider);
    return prefs.getInt(_key);
  }

  Future<void> save(int? value) async {
    state = value;
    final prefs = ref.read(sharedPreferencesProvider);
    if (value == null) {
      await prefs.remove(_key);
      return;
    }
    await prefs.setInt(_key, value);
  }

  static const String _key = 'invited_promotion_selected_sponsor';
}
