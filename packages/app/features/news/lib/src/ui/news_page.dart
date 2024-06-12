import 'package:flutter/material.dart';
import 'package:packages_app_features_news/src/gen/l10n/l10n.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l = L10nNews.of(context);
    return Center(
      child: Text(l.newsPageTitle),
    );
  }
}
