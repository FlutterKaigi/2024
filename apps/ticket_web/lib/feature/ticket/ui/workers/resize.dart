import 'dart:typed_data';

import 'package:image/image.dart' as image;

Future<Uint8List> resize(Uint8List croppedImage) async {
  final command = image.Command()
    ..decodeImage(croppedImage)
    ..copyResize(
      height: 400,
      width: 400,
    )
    ..encodePng();
  final resizedImage = await command.executeThread();
  return resizedImage.outputBytes!;
}
