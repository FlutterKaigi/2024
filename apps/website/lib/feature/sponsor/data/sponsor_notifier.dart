import 'package:common_data/sponsor.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sponsor_notifier.g.dart';

@Riverpod(keepAlive: true)
Future<List<SponsorWithSessionV2>> sponsor(Ref ref) async =>
    ref.watch(sponsorRepositoryProvider).fetchSponsorWithSessionsV2();
