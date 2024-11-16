import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'messaging.g.dart';

@riverpod
FirebaseMessaging firebaseMessaging(
  Ref ref,
) =>
    FirebaseMessaging.instance;
