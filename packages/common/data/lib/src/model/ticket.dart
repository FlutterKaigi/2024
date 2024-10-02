import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket.freezed.dart';
part 'ticket.g.dart';

@freezed
class Ticket with _$Ticket {
  const factory Ticket({
    required String id,
    required String userId,
    required TicketType type,
    required DateTime createdAt,
    required String? sessionId,
    required int? sponsorId,
    required String? stripeCheckoutSessionId,
  }) = _Ticket;

  factory Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);
}

@JsonEnum(fieldRename: FieldRename.snake)
enum TicketType {
  /// スポンサーブースの運営来場
  sponsorBooth,

  /// スポンサー招待
  sponsorInvited,

  /// 個別スポンサー
  individualSponsor,

  /// 一般
  general,

  /// 一般セッション登壇者
  regularSpeaker,

  /// スポンサーセッション登壇者
  sponsorSpeaker,
  ;
}
