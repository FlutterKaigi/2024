import 'package:common_data/src/model/sns.dart';
import 'package:common_data/src/model/staff.dart';
import 'package:common_data/src/supabase_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'staff_repository.freezed.dart';
part 'staff_repository.g.dart';

@Riverpod(keepAlive: true)
StaffRepository staffRepository(Ref ref) {
  final supabaseClient = ref.watch(supabaseClientProvider);
  final staffsStorageFileApi = ref.watch(staffsStorageFileApiProvider);
  return StaffRepository(
    supabaseClient: supabaseClient,
    staffsStorageFileApi: staffsStorageFileApi,
  );
}

final class StaffRepository {
  StaffRepository({
    required SupabaseClient supabaseClient,
    required StorageFileApi staffsStorageFileApi,
  })  : _supabaseClient = supabaseClient,
        _staffsStorageFileApi = staffsStorageFileApi;

  final SupabaseClient _supabaseClient;
  final StorageFileApi _staffsStorageFileApi;

  Future<List<Staff>> fetchStaffMembers() async {
    final staffsView = await _supabaseClient.from('staffs').select('''
          name, icon_name, greeting,
          sns_accounts:staff_social_networking_services!inner(type, value)
        ''').withConverter((json) => json.map(StaffsView.fromJson).toList());

    final staffs = staffsView.map((staffView) {
      final snsAccounts = staffView.snsAccounts.map((snsAccount) {
        final snsType = SnsType.values.byName(snsAccount.type);
        final snsValue = snsAccount.value;
        final link = snsType.toUri(snsValue);
        return SnsAccount(
          type: snsType,
          link: link,
        );
      }).toList();
      final iconUrl = Uri.parse(
        _staffsStorageFileApi.getPublicUrl(staffView.iconName),
      );
      return Staff(
        name: staffView.name,
        iconUrl: iconUrl,
        greeting: staffView.greeting,
        snsAccounts: snsAccounts,
      );
    }).toList();
    return staffs;
  }
}

@freezed
class StaffsView with _$StaffsView {
  const factory StaffsView({
    required String name,
    @JsonKey(name: 'icon_name') required String iconName,
    required String greeting,
    @JsonKey(name: 'sns_accounts')
    required List<StaffsViewSnsAccount> snsAccounts,
  }) = _StaffsView;

  factory StaffsView.fromJson(Map<String, dynamic> json) =>
      _$StaffsViewFromJson(json);
}

@freezed
class StaffsViewSnsAccount with _$StaffsViewSnsAccount {
  const factory StaffsViewSnsAccount({
    required String type,
    required String value,
  }) = _StaffsViewSnsAccount;

  factory StaffsViewSnsAccount.fromJson(Map<String, dynamic> json) =>
      _$StaffsViewSnsAccountFromJson(json);
}
