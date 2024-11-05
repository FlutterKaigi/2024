import 'package:conference_2024_website/gen/i18n/strings.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// `apps/ticket_web/lib/core/components/error/error_card.dart`を引用
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
    this.onRetry,
  });

  final Object error;
  final Color? color;
  final String? title;
  final String? suffixMessage;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final VoidCallback? onRetry;

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
            if (onRetry != null) ...[
              const SizedBox(height: 8),
              TextButton(onPressed: onRetry, child: const Text('再試行')),
            ],
          ],
        ),
      ),
    );
  }

  String _buildErrorMessage(Translations i18n) {
    return 'エラーが発生しました\n($error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Object>('error', error));
    properties.add(ColorProperty('color', color));
    properties.add(StringProperty('title', title));
    properties.add(StringProperty('suffixMessage', suffixMessage));
    properties.add(DiagnosticsProperty<EdgeInsets?>('padding', padding));
    properties.add(DiagnosticsProperty<EdgeInsets?>('margin', margin));
    properties.add(
      ObjectFlagProperty<String? Function(int statusCode)?>.has(
        'onDioExceptionStatusOverride',
        onDioExceptionStatusOverride,
      ),
    );
    properties.add(ObjectFlagProperty<VoidCallback?>.has('onRetry', onRetry));
  }
}
