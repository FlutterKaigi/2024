import 'package:common_data/news.dart';
import 'package:conference_2024_website/ui/home/notifier/news_data_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_data_notifier.g.dart';

@riverpod
class NewsDataNotifier extends _$NewsDataNotifier {
  @override
  NewsDataState build() {
    return const NewsDataState.initial();
  }

  Future<void> getNews() async {
    final newsRepository = ref.read(newsRepositoryProvider);
    state = const NewsDataState.loading();
    try {
      final news = await newsRepository.getNews();
      state = NewsDataState.loaded(news);
    } on Exception catch (_) {
      state = const NewsDataState.error();
    }
  }
}
