import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class UserQrDialog extends StatelessWidget {
  const UserQrDialog({
    required this.userId,
    super.key,
  });

  final String userId;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'ユーザーQRコード',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            QrImageView(
              data: userId,
              size: 250,
              backgroundColor: Colors.white,
            ),
            const SizedBox(height: 16),
            Text(
              'U-${userId.split('-')[0]}',
              style: theme.textTheme.bodyLarge,
            ),
            const SizedBox(height: 24),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('閉じる'),
            ),
          ],
        ),
      ),
    );
  }
}
