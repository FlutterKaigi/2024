import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'image_picker_provider.g.dart';

@Riverpod(keepAlive: true)
ImagePicker imagePicker(ImagePickerRef ref) => ImagePicker();
