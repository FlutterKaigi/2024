// https://zenn.dev/k9i/articles/b8c333e1bb8b9b
import 'package:riverpod_annotation/riverpod_annotation.dart';

extension AsyncValueX<T> on AsyncValue<T> {
  /// guard関数の拡張版
  /// 例外時に前回のデータを持たせてエラーを返す
  Future<AsyncValue<T>> guardPlus(Future<T> Function() future) async {
    try {
      return AsyncValue.data(await future());
      // ignore: avoid_catches_without_on_clauses
    } catch (err, stack) {
      // 前回のデータを持たせてエラーを返す
      return AsyncValue<T>.error(err, stack).copyWithPrevious(this);
    }
  }
}
