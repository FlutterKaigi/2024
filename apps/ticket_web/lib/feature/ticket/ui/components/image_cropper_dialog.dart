import 'dart:typed_data';

import 'package:crop_your_image/crop_your_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image/image.dart' as image;
import 'package:ticket_web/gen/i18n/strings.g.dart';

class ImageCropperDialog extends HookWidget {
  const ImageCropperDialog({
    required this.imageBytes,
    super.key,
  });

  static Future<Uint8List?> show(
    BuildContext context,
    Uint8List imageBytes,
  ) async =>
      showDialog<Uint8List>(
        context: context,
        builder: (context) => ImageCropperDialog(imageBytes: imageBytes),
      );

  final Uint8List imageBytes;

  @override
  Widget build(BuildContext context) {
    final controller = useRef(CropController());
    final isCropping = useState(false);

    final i18n = Translations.of(context);

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      clipBehavior: Clip.antiAlias,
      child: Scaffold(
        appBar: AppBar(
          title: Text(i18n.ticketPage.editFields.avatar.crop.title),
          actions: [
            TextButton.icon(
              label: Text(i18n.ticketPage.editFields.avatar.crop.cropButton),
              icon: const Icon(Icons.crop),
              onPressed: isCropping.value
                  ? null
                  : () async {
                      isCropping.value = true;
                      controller.value.crop();
                    },
            ),
          ],
        ),
        body: isCropping.value
            ? const Center(
                child: CircularProgressIndicator.adaptive(),
              )
            : Padding(
                padding: const EdgeInsets.all(8),
                child: Crop(
                  controller: controller.value,
                  image: imageBytes,
                  onCropped: (croppedImage) async {
                    // 400x400にリサイズ
                    final command = image.Command()
                      ..decodeImage(croppedImage)
                      ..copyResize(
                        height: 400,
                        width: 400,
                      )
                      ..encodePng();
                    final resizedImage = await command.executeThread();
                    final resizedImageBytes = resizedImage.outputBytes!;

                    if (context.mounted) {
                      isCropping.value = false;
                      Navigator.of(context).pop(resizedImageBytes);
                    }
                  },
                  aspectRatio: 1,
                  withCircleUi: true,
                  progressIndicator: const Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                ),
              ),
      ),
    );
  }
}
