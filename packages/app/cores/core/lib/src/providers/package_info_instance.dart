import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'package_info_instance.g.dart';

late PackageInfo _packageInfo;

/// [PackageInfo] instance initialization.
Future<void> initPackageInfoInstance({
  PackageInfo? packageInfo,
}) async {
  _packageInfo = packageInfo ?? await PackageInfo.fromPlatform();
}

/// This provider requires calling [initPackageInfoInstance] in advance.
@riverpod
PackageInfo packageInfoInstance(
  Ref ref,
) =>
    _packageInfo;
