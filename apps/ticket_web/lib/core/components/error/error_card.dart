import 'package:flutter/material.dart';
import 'package:ticket_api/ticket_api.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class ErrorCard extends StatelessWidget {
  const ErrorCard({
    required this.error,
    super.key,
    this.onDioExceptionStatusOverride,
    this.color,
    this.suffixMessage,
    this.title,
    this.padding = const EdgeInsets.all(16),
    this.margin = const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  });

  final Object error;
  final Color? color;
  final String? title;
  final String? suffixMessage;
  final EdgeInsets? padding;
  final EdgeInsets? margin;

  /// DioExceptionで、StatusCodeがある時に　エラーメッセージを上書きする
  final String? Function(int statusCode)? onDioExceptionStatusOverride;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final i18n = Translations.of(context);
    final message = _buildErrorMessage(i18n);

    final colorScheme = theme.colorScheme;

    return Card(
      margin: margin,
      color: color ?? theme.colorScheme.errorContainer,
      child: Padding(
        padding: padding ?? EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.error,
                  size: 48,
                  color: colorScheme.error,
                ),
                const SizedBox(width: 16),
                Flexible(
                  child: Text(
                    title ?? 'ERROR!',
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onErrorContainer,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              message,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onErrorContainer,
              ),
            ),
            if (suffixMessage != null) ...[
              const SizedBox(height: 8),
              Text(
                suffixMessage!,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onErrorContainer,
                ),
              ),
            ],
          ],
        ),
      ),
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
