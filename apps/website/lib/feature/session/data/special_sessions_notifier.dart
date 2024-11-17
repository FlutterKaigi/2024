import 'package:common_data/speaker.dart';
import 'package:conference_2024_website/feature/session/data/model/special_session.dart';
import 'package:conference_2024_website/feature/session/data/sessions_notifier.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'special_sessions_notifier.g.dart';

@Riverpod(keepAlive: true)
List<SpecialSession> specialSessions(Ref ref) {
  return [
    // 1日目
    SpecialSession(
      title: '開場',
      startsAt: DateTime(2024, 11, 21, 9, 30).toUtc(),
      type: SpecialSessionType.opening,
    ),
    SpecialSession(
      title: '基調講演',
      startsAt: DateTime(2024, 11, 21, 10, 10).toUtc(),
      endsAt: DateTime(2024, 11, 21, 10, 50).toUtc(),
      type: SpecialSessionType.keynote,
      speaker: Speaker(
        id: '1',
        name: 'Kevin Chisholm',
        xUri: Uri.parse('https://x.com/kevinjchisholm'),
        avatarUri: null,
      ),
      imagePath: 'assets/images/kevin_image.webp',
      speakerTitle: 'Dart & Flutter Team Technical Program Manager',
    ),
    SpecialSession(
      title: 'ランチ',
      startsAt: DateTime(2024, 11, 21, 11, 40).toUtc(),
      endsAt: DateTime(2024, 11, 21, 13).toUtc(),
      type: SpecialSessionType.lunch,
    ),
    SpecialSession(
      title: '懇親会準備',
      startsAt: DateTime(2024, 11, 21, 16, 40).toUtc(),
      type: SpecialSessionType.preparation,
      venueId: 'd6432c3c-3ef9-44ef-aa69-78f5e4dd867d', // Room Aのみ
    ),
    SpecialSession(
      title: '閉会',
      startsAt: DateTime(2024, 11, 21, 18, 10).toUtc(),
      type: SpecialSessionType.closing,
    ),
    SpecialSession(
      title: '懇親会',
      startsAt: DateTime(2024, 11, 21, 18, 30).toUtc(),
      endsAt: DateTime(2024, 11, 21, 20).toUtc(),
      type: SpecialSessionType.party,
      venueId: 'd6432c3c-3ef9-44ef-aa69-78f5e4dd867d', // Room Aのみ
    ),
    // 2日目
    SpecialSession(
      title: '開場',
      startsAt: DateTime(2024, 11, 22, 9, 30).toUtc(),
      type: SpecialSessionType.opening,
    ),
    SpecialSession(
      title: 'ランチ',
      startsAt: DateTime(2024, 11, 22, 11, 40).toUtc(),
      endsAt: DateTime(2024, 11, 22, 13, 30).toUtc(),
      type: SpecialSessionType.lunch,
    ),
    SpecialSession(
      title: '閉会',
      startsAt: DateTime(2024, 11, 22, 18, 10).toUtc(),
      type: SpecialSessionType.closing,
    ),
  ];
}

@Riverpod(keepAlive: true)
List<SpecialSession> specialSessionsByDate(
  Ref ref,
  EventDate date,
) {
  final sessions = ref.watch(specialSessionsProvider);
  return sessions
      .where((session) => date.isSameDate(session.startsAt))
      .toList();
}
