import 'package:common_data/src/model/speaker.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'speaker_repository.g.dart';

@Riverpod(keepAlive: true)
SpeakerRepository speakerRepository(Ref ref) => SpeakerRepository();

class SpeakerRepository {
  SpeakerRepository();

  Speaker toSpeaker(SpeakerTable speakerTable) => Speaker(
        id: speakerTable.id,
        name: speakerTable.name,
        avatarUri: Uri.file(
          'supabase/seed-storage/speakers/${speakerTable.avatarName}',
        ),
        xUri: speakerTable.xId != null
            ? Uri.parse(
                'https://x.com/${speakerTable.xId}',
              )
            : null,
      );
}
