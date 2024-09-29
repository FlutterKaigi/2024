import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_api/model/ticket/promotion_metadata.dart';

part 'get_promotion_response.freezed.dart';
part 'get_promotion_response.g.dart';

@freezed
class GetPromotionResponse with _$GetPromotionResponse {
  const factory GetPromotionResponse({
    required PromotionMetadata metadata,
  }) = _GetPromotionResponse;

  factory GetPromotionResponse.fromJson(Map<String, dynamic> json) =>
      _$GetPromotionResponseFromJson(json);
}
