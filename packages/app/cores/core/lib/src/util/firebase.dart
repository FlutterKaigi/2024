import 'dart:developer';
import 'dart:io';

import 'package:app_cores_core/src/providers/messaging.dart';
import 'package:app_cores_core/src/providers/permission.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


Future<void> initFirebaseMessaging(WidgetRef ref) async {
  final instance = FlutterLocalNotificationsPlugin();
  await instance.initialize(
    const InitializationSettings(
      android: AndroidInitializationSettings('@drawable/ic_notification'),
      iOS: DarwinInitializationSettings(
        requestAlertPermission: false,
        requestSoundPermission: false,
        requestBadgePermission: false,
      ),
    ),
  );

  const androidDefaultChannel = AndroidNotificationChannel(
    'default_channel',
    'Default (Importance High)',
    importance: Importance.high,
  );

  await instance
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(androidDefaultChannel);

  FirebaseMessaging.onMessage.listen(
    (event) async {
      log('FirebaseMessaging.onMessage: ${event.toMap()}');

      await instance.show(
        event.messageId.hashCode,
        event.notification?.title,
        event.notification?.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            androidDefaultChannel.id,
            androidDefaultChannel.name,
          ),
        ),
      );
    },
  );

  final currentStatus = await ref.read(notificationPermissionProvider.future);
  if (currentStatus == NotificationPermission.granted) {
    await subscribeTopics(ref);
  }
}

Future<void> subscribeTopics(WidgetRef ref) async {
  final instance = ref.read(firebaseMessagingProvider);

  /// Since subscribeToTopic is only supported on mobile devices,
  /// we need to check "whether the platform is iOS or macOS".
  if (Platform.isIOS || Platform.isMacOS) {
    final token = await instance.getAPNSToken();
    if (token == null) {
      /// if apns token is null, cannot subscribe to topics.
      log('FirebaseMessaging.getAPNSToken: null');
      return;
    }
  }

  const topics = [
    'general',
  ];
  for (final topic in topics) {
    await instance.subscribeToTopic(topic);
  }
}
