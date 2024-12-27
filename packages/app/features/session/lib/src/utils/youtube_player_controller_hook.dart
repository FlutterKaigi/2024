import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

YoutubePlayerController useYoutubePlayerController({
  required String initialVideoId,
  YoutubePlayerFlags flags = const YoutubePlayerFlags(),
}) {
  return use(
    _YoutubePlayerControllerHook(
      initialVideoId: initialVideoId,
      flags: flags,
    ),
  );
}

class _YoutubePlayerControllerHook extends Hook<YoutubePlayerController> {
  const _YoutubePlayerControllerHook({
    required this.initialVideoId,
    required this.flags,
  });

  final String initialVideoId;
  final YoutubePlayerFlags flags;

  @override
  _YoutubePlayerControllerHookState createState() =>
      _YoutubePlayerControllerHookState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('initialVideoId', initialVideoId));
    properties.add(DiagnosticsProperty<YoutubePlayerFlags>('flags', flags));
  }
}

class _YoutubePlayerControllerHookState
    extends HookState<YoutubePlayerController, _YoutubePlayerControllerHook> {
  late final YoutubePlayerController _controller;

  @override
  void initHook() {
    super.initHook();
    _controller = YoutubePlayerController(
      initialVideoId: hook.initialVideoId,
      flags: hook.flags,
    );
  }

  @override
  YoutubePlayerController build(BuildContext context) => _controller;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
