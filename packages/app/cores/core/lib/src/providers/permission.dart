import 'package:permission_handler/permission_handler.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'permission.g.dart';

typedef NotificationPermission = PermissionStatus;

@riverpod
Future<PermissionStatus> notificationPermission(
  Ref ref,
) async =>
    Permission.notification.status;
