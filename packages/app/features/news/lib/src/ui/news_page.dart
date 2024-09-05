import 'package:app_cores_designsystem/ui.dart';
import 'package:app_cores_settings/ui.dart';
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
      body: CustomScrollView(
        slivers: [
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
