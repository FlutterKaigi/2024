import 'package:common_data/news.dart';
import 'package:conference_2024_website/ui/home/notifier/news_data_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_data_notifier.g.dart';

@riverpod
class NewsDataNotifier extends _$NewsDataNotifier {
  late final NewsRepository _newsRepository;

  @override
  NewsDataState build() {
    _newsRepository = ref.read(newsRepositoryProvider);
    return const NewsDataState.initial();
  }

  Future<void> getNews() async {
    state = const NewsDataState.loading();
    try {
      final news = await _newsRepository.getNews();
      state = NewsDataState.loaded(news);
    } on Exception catch (e) {
      state = NewsDataState.error(e.toString());
    }
  }
}
