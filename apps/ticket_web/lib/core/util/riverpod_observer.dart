import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class RiverpodObserver implements ProviderObserver {
  @override
  void didAddProvider(
    ProviderBase<Object?> provider,
    Object? value,
    ProviderContainer container,
  ) =>
      log(
        '$provider: $value',
        name: 'didAddProvider',
      );

  @override
  void didDisposeProvider(
    ProviderBase<Object?> provider,
    ProviderContainer container,
  ) =>
      log(
        '$provider',
        name: 'didDisposeProvider',
      );

  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) =>
      log(
        provider.name == 'userAvatarImageProvider'
            ? '$provider: ${newValue.runtimeType}'
            : '$provider: $newValue',
        name: 'didUpdateProvider',
      );

  @override
  void providerDidFail(
    ProviderBase<Object?> provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) =>
      log(
        '$provider: $error',
        name: 'providerDidFail',
      );
}
