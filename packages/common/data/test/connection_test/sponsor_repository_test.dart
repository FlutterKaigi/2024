import 'package:common_data/src/model/sponsor.dart';
import 'package:common_data/src/repository/sponsor_repository.dart';
import 'package:common_data/src/supabase_client.dart';
import 'package:common_data/supabase_initializer.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test/test.dart';

void main() async {
  SharedPreferences.setMockInitialValues({});
  final supabaseInitializer = SupabaseInitializer(
    url: 'http://localhost:54321',
    anonKey: '',
  );

  late SponsorRepository sponsorRepository;
  setUp(() async {
    final supabase = await supabaseInitializer.initialize();
    final container = ProviderContainer(
      overrides: [
        supabaseProvider.overrideWithValue(supabase),
      ],
    );
    addTearDown(container.dispose);
    sponsorRepository = container.read(sponsorRepositoryProvider);
  });

  test(
    'スポンサー情報を取得して用意しているクラスに変換できること',
    () async {
      late final dynamic result;
      try {
        result = await sponsorRepository.fetchSponsors();
      } on Exception catch (e) {
        result = e;
      }
      expect(result, isA<List<Sponsor>>());
    },
    skip: '`supabase start` していないとテストが失敗するため',
  );
}
