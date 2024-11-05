import 'package:common_data/src/model/news.dart';
import 'package:common_data/src/repository/news_repository.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_provider.g.dart';

@riverpod
Future<List<News>> news(Ref ref) async {
  final repository = ref.watch(newsRepositoryProvider);
  return repository.getNews();
}
