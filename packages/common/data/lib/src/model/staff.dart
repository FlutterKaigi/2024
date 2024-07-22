import 'package:common_data/src/model/sns.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'staff.freezed.dart';

@freezed
class Staff with _$Staff {
  const factory Staff({
    required String name,
    required Uri iconUrl,
    required String greeting,
    required List<SnsAccount> snsAccounts,
  }) = _Staff;
}
