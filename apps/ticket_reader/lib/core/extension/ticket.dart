import 'package:common_data/ticket.dart';

extension TicketTypeEx on TicketType {
  String get displayName => switch (this) {
        TicketType.general => '一般',
        TicketType.sponsorBooth => 'スポンサーブース',
        TicketType.sponsorInvited => 'スポンサー招待',
        TicketType.individualSponsor => '個人スポンサー',
        TicketType.regularSpeaker => '一般登壇者',
        TicketType.sponsorSpeaker => 'スポンサー登壇者',
      };
}
