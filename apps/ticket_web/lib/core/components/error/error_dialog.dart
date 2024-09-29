import 'package:flutter/material.dart';
import 'package:ticket_api/ticket_api.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

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

    final i18n = Translations.of(context);
    final message = _buildErrorMessage(i18n);

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

  String _buildErrorMessage(Translations i18n) {
    if (error case DioException(:final response) when response != null) {
      final advancedErrorMessage = switch (response.data) {
        {'error': final String errorMsg} => errorMsg,
        _ => i18n.error.network.unknown,
      };

      final statusCode = response.statusCode;
      if (statusCode != null) {
        final baseMessage = onDioExceptionStatusOverride?.call(statusCode) ??
            switch (statusCode) {
              400 => i18n.error.network.status400,
              403 => i18n.error.network.status403,
              404 => i18n.error.network.status404,
              429 => i18n.error.network.status429,
              500 => i18n.error.network.status500,
              503 => i18n.error.network.status503,
              _ => i18n.error.network.statusOther(statusCode: statusCode),
            };
        return '$baseMessage\n'
            '$advancedErrorMessage';
      }
      return advancedErrorMessage;
    }

    return '${i18n.error.network.unknown}\n($error)';
  }
}
