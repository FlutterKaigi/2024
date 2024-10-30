import 'package:app_cores_designsystem/ui.dart';
import 'package:common_data/profile.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// ボーダー付きのアイコン画像
///
/// セッション登壇者や、コントリビューター等アカウントに対する
/// アイコン画像をボーダー付きで表示するためのWidget。
class SessionSpeakerIcon extends StatelessWidget {
  const SessionSpeakerIcon({
    required this.profile,
    required this.size,
    super.key,
  });

  final ProfileWithSns profile;
  final double size;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return FutureBuilder<Uint8List?>(
      // ignore: discarded_futures
      future: profile.userAvatarFetch?.call(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          return _buildContents(
            MemoryImage(snapshot.data!),
            theme,
          );
        }

        return _buildContents(
          NetworkImage(profile.googleAvatarUri?.toString() ?? ''),
          theme,
        );
      },
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DoubleProperty('size', size));
    properties.add(DiagnosticsProperty<ProfileWithSns>('profile', profile));
  }

  Widget _buildContents(
    ImageProvider provider,
    ThemeData theme,
  ) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.secondary,
        ),
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: provider,
          onError: (exception, stackTrace) => MainLogo(size: size),
        ),
      ),
      child: SizedBox(
        height: size,
        width: size,
      ),
    );
  }
}
