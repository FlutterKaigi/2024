import 'package:app_cores_designsystem/ui.dart';
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

    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          _imageUrl,
          errorBuilder: (context, error, stackTrace) {
            return const MainLogo();
          },
        ),
      ),
      title: Text(
        _name,
        style: theme.textTheme.bodyMedium,
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    );
  }
}
