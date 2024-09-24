import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_promotion_response.freezed.dart';
part 'post_promotion_response.g.dart';

@freezed
class PostPromotionResponse with _$PostPromotionResponse {
  const factory PostPromotionResponse({
    required String id,
    required String code,
  }) = _PostPromotionResponse;

  factory PostPromotionResponse.fromJson(Map<String, dynamic> json) =>
      _$PostPromotionResponseFromJson(json);
}
