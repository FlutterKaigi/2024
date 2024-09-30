import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_api/model/ticket/promotion_metadata.dart';
import 'package:ticket_api/ticket_api.dart';
import 'package:ticket_web/core/provider/environment.dart';

part 'promotion_code_service.g.dart';

@Riverpod(keepAlive: true, dependencies: [Environment])
PromotionCodeService promotionCodeService(PromotionCodeServiceRef ref) {
  final baseUrl = ref.watch(environmentProvider).ticketApiBaseUrl;

  return PromotionCodeService(
    ticketApiClient: ref.watch(ticketApiClientProvider(baseUrl)),
  );
}

class PromotionCodeService {
  PromotionCodeService({
    required TicketApiClient ticketApiClient,
  }) : _ticketApiClient = ticketApiClient;

  final TicketApiClient _ticketApiClient;

  Future<PromotionMetadata> verifyCode(
    String code,
  ) async {
    final metadataResult = await _ticketApiClient.getPromotion(code: code);
    return metadataResult.metadata;
  }
}
