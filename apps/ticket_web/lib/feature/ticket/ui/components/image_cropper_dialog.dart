import 'dart:js_interop';
import 'dart:typed_data';

import 'package:crop_your_image/crop_your_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';
import 'package:web/web.dart' as web;

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
      [],
    );

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
                    // 画像をリサイズする
                    worker.postMessage(croppedImage.toJS);
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
