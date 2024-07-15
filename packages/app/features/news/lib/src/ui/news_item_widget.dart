import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// スタッフ情報のアイテム
class NewsItemWidget extends StatelessWidget {
  const NewsItemWidget({
    required String name,
    required DateTime publishedAt,
    super.key,
  })  : _name = name,
        _publishedAt = publishedAt;

  final String _name;
  final DateTime _publishedAt;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      title: Text(
        _name,
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text(
        DateFormat.yMMMMd().format(_publishedAt),
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      onTap: () {},
    );
  }
}
