import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:ticket_api/models/verify_purchase_response.dart';

part 'ticket_api.g.dart';

@RestApi()
abstract class TicketApiClient {
  factory TicketApiClient(Dio dio, {String baseUrl}) = _TicketApiClient;

  // MEMO(YumNumm): めんどくさいので とりあえずMapで返す
  @POST('/verify_purchase')
  Future<HttpResponse<VerifyPurchaseResponse>> verifyPurchase({
    @Query('session_id') required String sessionId,
    @Header('Authorization') required String authorization,
  });
}
