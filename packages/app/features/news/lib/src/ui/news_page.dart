import 'package:flutter/material.dart';
import 'package:packages_app_features_news/src/gen/l10n/l10n.dart';
import 'package:packages_app_features_news/src/ui/news_item_widget.dart';

/// お知らせ一覧画面
class NewsPage extends StatelessWidget {
  const NewsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l = L10nNews.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      height: 40,
                      width: 40,
                      child: Icon(
                        Icons.flutter_dash_sharp,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      l.newsPageTitle,
                    ),
                  ],
                ),
                IconButton(
                  icon: const Icon(
                    Icons.settings,
                  ),
                  onPressed: () {
                    // TODO:画面遷移は別タスクで行います
                    // https://github.com/FlutterKaigi/2024/issues/145
                  },
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return NewsItemWidget(
                  name: 'Opening CfP form!',
                  publishedAt: DateTime.now(),
                  uri: Uri.https('flutter.dev'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
