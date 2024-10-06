import 'package:image_picker_for_web/image_picker_for_web.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'image_picker_provider.g.dart';

@Riverpod(keepAlive: true)
ImagePickerPlugin imagePicker(ImagePickerRef ref) => ImagePickerPlugin();
