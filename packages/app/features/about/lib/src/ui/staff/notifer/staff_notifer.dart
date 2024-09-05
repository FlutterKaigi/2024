import 'dart:async';

import 'package:common_data/staff.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final staffNotifierProvider =
    AsyncNotifierProvider<StaffNotifier, List<Staff>>(StaffNotifier.new);

class StaffNotifier extends AsyncNotifier<List<Staff>> {
  @override
  FutureOr<List<Staff>> build() async {
    return await ref.watch(staffRepositoryProvider).fetchStaffs();
  }
}
