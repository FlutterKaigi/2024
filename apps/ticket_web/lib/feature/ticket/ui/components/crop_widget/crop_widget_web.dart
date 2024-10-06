import 'dart:js_interop';
import 'dart:typed_data';

import 'package:crop_your_image/crop_your_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:web/web.dart' as web;

class CropWidget extends HookWidget {
  const CropWidget({
    required this.imageBytes,
    required this.isCropping,
    required this.controller,
    super.key,
  });

  final Uint8List imageBytes;
  final ValueNotifier<bool> isCropping;
  final CropController controller;

  @override
  Widget build(BuildContext context) {
    final worker = useMemoized(
      () => web.Worker(
        'assets/workers/resize_worker.js'.toJS,
      ),
      [],
    );

    useEffect(
      () {
        worker.onmessage = ((web.MessageEvent message) {
          final resizedImageBytes =
              (message.data as JSUint8Array?)?.toDart ?? Uint8List.fromList([]);
          if (context.mounted) {
            isCropping.value = false;
            Navigator.of(context).pop(resizedImageBytes);
          }
        }).toJS;
        return null;
      },
      [worker],
    );

    return Crop(
      controller: controller,
      image: imageBytes,
      onCropped: (croppedImage) async {
        // Web では Worker を使用して画像をリサイズする
        worker.postMessage(croppedImage.toJS);
      },
      aspectRatio: 1,
      withCircleUi: true,
      progressIndicator: const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
