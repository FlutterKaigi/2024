import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_api/model/ticket/promotion_metadata.dart';

part 'post_promotion_request.freezed.dart';
part 'post_promotion_request.g.dart';

@freezed
class PostPromotionRequest with _$PostPromotionRequest {
  @Assert(
    'maxRedemptions >= 0',
    'maxRedemptions must be greater than or equal to 0',
  )
  const factory PostPromotionRequest({
    required PromotionMetadata metadata,
    required int maxRedemptions,
  }) = _PostPromotionRequest;

  factory PostPromotionRequest.fromJson(Map<String, dynamic> json) =>
      _$PostPromotionRequestFromJson(json);
}
