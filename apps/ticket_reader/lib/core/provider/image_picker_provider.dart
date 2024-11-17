import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'image_picker_provider.g.dart';

@Riverpod(keepAlive: true)
ImagePicker imagePicker(Ref ref) {
  return ImagePicker();
}
