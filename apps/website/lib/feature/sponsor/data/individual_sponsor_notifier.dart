import 'package:common_data/profile.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'individual_sponsor_notifier.g.dart';

@Riverpod(keepAlive: true)
Future<List<ProfileWithSns>> individualSponsor(Ref ref) async =>
    ref.watch(profileRepositoryProvider).fetchProfilesForIndividualSponsor();
