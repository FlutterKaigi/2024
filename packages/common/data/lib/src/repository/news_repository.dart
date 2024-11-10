import 'package:common_data/news.dart';
import 'package:common_data/src/repository/news_repository_impl.dart';
import 'package:common_data/src/supabase_client.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_repository.g.dart';

@Riverpod(keepAlive: true)
NewsRepository newsRepository(Ref ref) => NewsRepositoryImpl(
      supabaseClient: ref.watch(supabaseClientProvider),
    );

abstract interface class NewsRepository {
  /// 掲載中のお知らせを取得する
  ///
  /// 掲載中のお知らせの条件
  /// - お知らせがすでに始まっている（開始時刻が現在と等しいか、現在より前）。
  /// - お知らせがまだ終了していない（終了時刻が現在より後、もしくは終了時刻が指定されていない）。
  Future<List<News>> getNews();
}
