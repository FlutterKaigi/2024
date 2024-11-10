import 'dart:async';

import 'package:common_data/news.dart';
import 'package:conference_2024_website/feature/news/data/news_data_notifier.dart';
import 'package:conference_2024_website/feature/news/data/news_data_state.dart';
import 'package:conference_2024_website/gen/i18n/strings.g.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/link.dart';

class NewsComponent extends HookConsumerWidget {
  const NewsComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;
    final colorTheme = theme.customThemeExtension.colorTheme;

    final newsDataState = ref.watch(newsDataNotifierProvider);
    final newsDataNotifier = ref.read(newsDataNotifierProvider.notifier);

    final i18n = Translations.of(context);

    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (newsDataState is NewsDataInitial) {
            unawaited(newsDataNotifier.getNews());
          }
        });
        return null;
      },
      const [],
    );

    return switch (newsDataState) {
      NewsDataInitial() ||
      NewsDataLoading() =>
        const Center(child: CircularProgressIndicator()),
      NewsDataLoaded(news: final news) =>
        _newsList(news, textTheme, colorTheme),
      NewsDataError() => _errorRetryButton(newsDataNotifier, i18n, textTheme),
    };
  }

  Widget _newsList(
    List<News> news,
    TextThemeExtension textTheme,
    ColorThemeExtension colorTheme,
  ) {
    return Column(
      children: news
          .map((news) {
            return Link(
              uri: news.url,
              builder: (context, followLink) => Material(
                elevation: 2,
                child: InkWell(
                  onTap: followLink,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: news.startedAtString,
                            style: textTheme.body,
                          ),
                          const TextSpan(text: ' '),
                          TextSpan(
                            text: news.text,
                            style: textTheme.body.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          })
          .toList()
          .expand(
            (element) => [
              element,
              const SizedBox(height: 8),
            ],
          )
          .toList(),
    );
  }

  Widget _errorRetryButton(
    NewsDataNotifier newsDataNotifier,
    Translations i18n,
    TextThemeExtension textTheme,
  ) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            i18n.newsError,
            style: textTheme.body,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              unawaited(newsDataNotifier.getNews());
            },
            child: Text(
              i18n.retry,
              style: textTheme.label,
            ),
          ),
        ],
      ),
    );
  }
}
