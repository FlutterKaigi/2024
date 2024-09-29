import 'dart:async';

import 'package:common_data/news.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final newsNotifierProvider =
    AsyncNotifierProvider<NewsNotifier, List<News>>(NewsNotifier.new);

class NewsNotifier extends AsyncNotifier<List<News>> {
  @override
  FutureOr<List<News>> build() async {
    return await ref.watch(newsRepositoryProvider).getNews();
  }
}
