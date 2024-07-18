import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

/// お知らせ情報のアイテム
class NewsItemWidget extends StatelessWidget {
  const NewsItemWidget({
    required String name,
    required DateTime publishedAt,
    required Uri uri,
    super.key,
  })  : _name = name,
        _publishedAt = publishedAt,
        _uri = uri;

  final String _name;
  final DateTime _publishedAt;
  final Uri _uri;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        _name,
      ),
      subtitle: Text(
        DateFormat.yMMMMd().format(_publishedAt),
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      onTap: () async {
        await launchUrl(
          _uri,
          mode: LaunchMode.externalApplication,
        );
      },
    );
  }
}
