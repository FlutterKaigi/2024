import 'package:common_data/auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_user.g.dart';

@Riverpod(keepAlive: true)
User? currentUser(CurrentUserRef ref) {
}
