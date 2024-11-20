import 'package:common_data/entry_log.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'entry_log_summary_provider.g.dart';

@Riverpod(keepAlive: true)
Future<EntryLogSummary> entryLogSummary(Ref ref) async =>
    ref.watch(entryLogRepositoryProvider).getEntryLogSummary();
