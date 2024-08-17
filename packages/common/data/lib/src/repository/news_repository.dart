import 'package:common_data/news.dart';
import 'package:common_data/src/repository/news_repository_impl.dart';
import 'package:common_data/src/supabase_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_repository.g.dart';

@Riverpod(keepAlive: true)
NewsRepository newsRepository(NewsRepositoryRef ref) =>
    NewsRepositoryImpl(
      supabaseClient: ref.watch(supabaseClientProvider),
    );

abstract interface class NewsRepository {
  Future<List<News>> getNews();
}
