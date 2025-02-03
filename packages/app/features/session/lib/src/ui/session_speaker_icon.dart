import 'package:app_cores_designsystem/ui.dart';
import 'package:common_data/speaker.dart';
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

  final Speaker profile;
  final double size;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final avatarUri = profile.avatarUri;

    if (avatarUri == null) {
      return MainLogo(size: size);
    }

    return _buildContents(
      AssetImage(avatarUri.toString(), package: 'common_data'),
      theme,
    );
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

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Speaker>('profile', profile));
    properties.add(DoubleProperty('size', size));
  }
}
