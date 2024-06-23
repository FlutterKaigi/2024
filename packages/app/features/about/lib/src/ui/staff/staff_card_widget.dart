import 'package:flutter/material.dart';

/// スタッフ情報のアイテム
class StaffCardWidget extends StatelessWidget {
  const StaffCardWidget({
    required String name,
    required String imageUrl,
    super.key,
  })  : _name = name,
        _imageUrl = imageUrl;
  final String _name;
  final String _imageUrl;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(
        bottom: 16,
      ),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(_imageUrl),
        ),
        title: Text(
          _name,
          style: theme.textTheme.bodyMedium,
        ),
        contentPadding: EdgeInsets.zero,
      ),
    );
  }
}
