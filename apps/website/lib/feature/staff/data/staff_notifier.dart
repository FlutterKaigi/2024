import 'package:common_data/staff.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'staff_notifier.g.dart';

@Riverpod(keepAlive: true)
Future<List<Staff>> staff(StaffRef ref) =>
    ref.watch(staffRepositoryProvider).fetchStaffs();
