import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
class Model with _$Model {
  const factory Model({
    required String name,
  }) = _Model;
}
