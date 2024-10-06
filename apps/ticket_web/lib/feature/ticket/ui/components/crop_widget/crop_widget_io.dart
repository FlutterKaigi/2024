import 'dart:typed_data';

import 'package:crop_your_image/crop_your_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ticket_web/feature/ticket/ui/workers/resize.dart';

class CropWidget extends HookWidget {
  const CropWidget({
    required this.imageBytes,
    required this.isCropping,
    required this.controller,
    required this.onResized,
    super.key,
  });

  final Uint8List imageBytes;
  final ValueNotifier<bool> isCropping;
  final CropController controller;
  final void Function(Uint8List resizedImageBytes) onResized;
  @override
  Widget build(BuildContext context) {
    return Crop(
      controller: controller,
      image: imageBytes,
      onCropped: (croppedImage) async {
        final resizedImageBytes = await resize(croppedImage);
        onResized(resizedImageBytes);
      },
      aspectRatio: 1,
      withCircleUi: true,
      progressIndicator: const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
