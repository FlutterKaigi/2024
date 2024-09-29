import 'package:freezed_annotation/freezed_annotation.dart';

part 'promotion_metadata.freezed.dart';
part 'promotion_metadata.g.dart';

@Freezed(unionKey: 'type')
sealed class PromotionMetadata with _$PromotionMetadata {
  const factory PromotionMetadata.general() = PromotionMetadataGeneral;

  const factory PromotionMetadata.session({
    required String sessionId,
  }) = PromotionMetadataSession;

  @Assert(
    'sponsorId >= 0',
    'sponsorId must be greater than or equal to 0',
  )
  const factory PromotionMetadata.sponsor({
    required int sponsorId,
  }) = PromotionMetadataSponsor;

  @Assert(
    'sponsorId >= 0',
    'sponsorId must be greater than or equal to 0',
  )
  const factory PromotionMetadata.sponsorSession({
    required int sponsorId,
    required String sessionId,
  }) = PromotionMetadataSponsorSession;

  factory PromotionMetadata.fromJson(Map<String, dynamic> json) =>
      _$PromotionMetadataFromJson(json);
}
