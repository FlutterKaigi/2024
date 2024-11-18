import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_api/ticket_api.dart';

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
    this.onReload,
  });

  final Object error;
  final Color? color;
  final String? title;
  final String? suffixMessage;
  final EdgeInsets? padding;
  final EdgeInsets? margin;

  /// DioExceptionで、StatusCodeがある時に　エラーメッセージを上書きする
  final String? Function(int statusCode)? onDioExceptionStatusOverride;

  /// 再読み込み
  final FutureOr<void> Function()? onReload;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final message = _buildErrorMessage();

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
                fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
              ),
            ),
            if (suffixMessage != null) ...[
              const SizedBox(height: 8),
              Text(
                suffixMessage!,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onErrorContainer,
                  fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                ),
              ),
            ],
            if (onReload != null) ...[
              const SizedBox(height: 8),
              FilledButton.tonalIcon(
                onPressed: onReload,
                icon: const Icon(Icons.refresh),
                label: const Text('再読み込み'),
              ),
            ],
          ],
        ),
      ),
    );
  }

  String _buildErrorMessage() {
    if (error is DioException) {
      if (error case DioException(:final response) when response != null) {
        final advancedErrorMessage = switch (response.data) {
          {'error': final String errorMsg} => errorMsg,
          _ => 'エラーが発生しました',
        };
        final statusCode = response.statusCode;
        if (statusCode != null) {
          final baseMessage = onDioExceptionStatusOverride?.call(statusCode) ??
              switch (statusCode) {
                400 => '不正なリクエストです',
                403 => 'アクセスが拒否されました',
                404 => 'リソースが見つかりません',
                500 => 'サーバーエラーが発生しました',
                503 => 'サービスが利用できません',
                _ => 'エラーが発生しました',
              };
          final data = response.data;
          if (data is Map<String, dynamic>) {
            return '$baseMessage\n'
                '$advancedErrorMessage\n'
                '${const JsonEncoder.withIndent(' ').convert(data)}';
          }
          return '$baseMessage\n'
              '$advancedErrorMessage\n'
              '${response.data}';
        }
        return advancedErrorMessage;
      }
    }
    return 'エラーが発生しました\n($error)';
  }
}
