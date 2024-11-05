import 'package:common_data/src/model/staff.dart';
import 'package:common_data/src/repository/staff_repository.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'staff_members_provider.g.dart';

@riverpod
Future<List<Staff>> staffMembers(Ref ref) async {
  final repository = ref.watch(staffRepositoryProvider);
  return repository.fetchStaffMembers();
}
