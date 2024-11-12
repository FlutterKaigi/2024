import 'package:app_cores_designsystem/ui.dart';
import 'package:app_cores_settings/ui.dart';
import 'package:app_features_news/src/gen/l10n/l10n.dart';
import 'package:app_features_news/src/ui/news_list_item.dart';
import 'package:common_data/news.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// お知らせ一覧画面
class NewsPage extends HookConsumerWidget {
  const NewsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L10nNews.of(context);
    final newsAsyncValue = ref.watch(newsProvider);
    return Scaffold(
      appBar: AppBar(
        leading: const Center(
          child: MainLogo(),
        ),
        leadingWidth: 48,
        titleSpacing: 4,
        centerTitle: false,
        title: Text(l.newsPageTitle),
        actions: const [
          SettingsButton(),
        ],
      ),
      body: newsAsyncValue.when(
        data: (newsList) {
          final availableNewsList = newsList.onlyAvailables();
          return availableNewsList.isNotEmpty
              ? CustomScrollView(
                  slivers: [
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: availableNewsList.length,
                        (context, index) {
                          final news = availableNewsList[index];
                          return NewsListItem(
                            name: news.text,
                            publishedAt: news.startedAt,
                            uri: news.url,
                          );
                        },
                      ),
                    ),
                  ],
                )
              : Center(
                  child: Text(l.newsIsEmpty),
                );
        },
        error: (error, stackTrace) {
          return Center(
            child: Text(error.toString()),
          );
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

extension on List<News> {
  /// 有効なお知らせのみに絞り込む
  List<News> onlyAvailables() => where(
        (news) => news.isAvailable,
      ).toList();
}

extension on News {
  /// 有効なお知らせかどうか
  ///
  /// 以下の２つの条件を満たす場合に有効と判断する。
  /// ・お知らせがすでに始まっている（開始時刻が現在より前）。
  /// ・お知らせがまだ終了していない（終了時刻が現在より後、もしくは終了時刻が指定されていない）。
  bool get isAvailable {
    final now = DateTime.now();
    return startedAt.isBefore(now) &&
        (endedAt == null || endedAt!.isAfter(now));
  }
}
