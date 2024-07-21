import 'package:common_data/src/supabase_client.dart';
import 'package:common_data/staff.dart';
import 'package:common_data/supabase_initializer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test/test.dart';

void main() async {
  SharedPreferences.setMockInitialValues({});
  final supabaseInitializer = SupabaseInitializer(
    url: 'http://localhost:54321',
    anonKey: '',
  );

  late StaffRepository staffRepository;
  setUp(() async {
    final supabase = await supabaseInitializer.initialize();
    final container = ProviderContainer(
      overrides: [
        supabaseProvider.overrideWithValue(supabase),
      ],
    );
    addTearDown(container.dispose);
    staffRepository = container.read(staffRepositoryProvider);
  });

  test(
    'スタッフ情報を取得して用意しているクラスに変換できること',
    () async {
      late final dynamic result;
      try {
        result = await staffRepository.fetchStaffs();
      } on Exception catch (e) {
        result = e;
      }
      expect(result, isA<List<Staff>>());
    },
    skip: '`supabase start` していないとテストが失敗するため',
  );
}
