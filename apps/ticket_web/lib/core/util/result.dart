import 'dart:async';

sealed class Result<T, E extends Exception> {
  const Result();
}

class Success<T, E extends Exception> extends Result<T, E> {
  const Success(this.value);

  final T value;
}

class Failure<T, E extends Exception> extends Result<T, E> {
  const Failure(this.exception);

  final E exception;
}

extension AsyncFunctionEx<T> on FutureOr<T> {
  /// 非同期関数をResultに変換する
  Future<Result<T, E>> wrapped<E extends Exception>() async {
    try {
      return Success(await this);
    } on E catch (e) {
      return Failure(e);
    }
  }
}
