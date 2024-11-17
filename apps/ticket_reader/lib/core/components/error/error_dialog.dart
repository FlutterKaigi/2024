import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog._({
    required this.error,
    this.onDioExceptionStatusOverride,
  });

  static Future<void> show({
    required BuildContext context,
    required Object error,
    String? Function(int statusCode)? onDioExceptionStatusOverride,
  }) async =>
      showDialog<void>(
        context: context,
        builder: (context) => ErrorDialog._(
          error: error,
          onDioExceptionStatusOverride: onDioExceptionStatusOverride,
        ),
      );

  final Object error;

  /// DioExceptionで、StatusCodeがある時に　エラーメッセージを上書きする
  final String? Function(int statusCode)? onDioExceptionStatusOverride;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final message = _buildErrorMessage();

    return AlertDialog(
      backgroundColor: theme.colorScheme.errorContainer,
      title: Text(
        'ERROR!',
        style: TextStyle(
          color: theme.colorScheme.onErrorContainer,
        ),
      ),
      content: Text(
        message,
        style: theme.textTheme.bodyMedium
            ?.copyWith(color: theme.colorScheme.onErrorContainer),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('OK'),
        ),
      ],
    );
  }

  String _buildErrorMessage() {
    return 'エラーが発生しました\n($error)';
  }
}
