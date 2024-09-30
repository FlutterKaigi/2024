import 'package:freezed_annotation/freezed_annotation.dart';

part 'promotion_metadata.freezed.dart';
part 'promotion_metadata.g.dart';

@freezed
class PromotionMetadata with _$PromotionMetadata {
  const factory PromotionMetadata({
    required PromotionMetadataType type,
  }) = _PromotionMetadata;

  factory PromotionMetadata.fromJson(Map<String, dynamic> json) =>
      _$PromotionMetadataFromJson(json);
}

enum PromotionMetadataType {
  general,
  session,
  sponsor,
  sponsorSession,
  ;
}
