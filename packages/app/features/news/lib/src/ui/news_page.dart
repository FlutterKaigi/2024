import 'package:app_cores_designsystem/ui.dart';
import 'package:app_cores_settings/ui.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_app_features_news/src/gen/l10n/l10n.dart';
import 'package:packages_app_features_news/src/ui/news_item_widget.dart';
import 'package:packages_app_features_news/src/ui/notifer/state/news_notifier.dart';

/// お知らせ一覧画面
class NewsPage extends HookConsumerWidget {
  const NewsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L10nNews.of(context);

    final newsAsyncValue = ref.watch(newsNotifierProvider);

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
          return newsList.isNotEmpty
              ? CustomScrollView(
                  slivers: [
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: newsList.length,
                        (context, index) {
                          final news = newsList[index];
                          return NewsItemWidget(
                            name: news.text,
                            publishedAt: news.startedAt,
                            uri: Uri.https(
                              news.url.toString(),
                            ),
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
