import 'package:image_picker_macos/image_picker_macos.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'image_picker_for_io.g.dart';

@Riverpod(keepAlive: true)
ImagePickerMacOS imagePicker(Ref ref) => ImagePickerMacOS();
