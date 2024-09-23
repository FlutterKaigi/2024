import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:ticket_api/model/ticket/get_promotion_response.dart';
import 'package:ticket_api/model/ticket/post_promotion_request.dart';
import 'package:ticket_api/model/ticket/post_promotion_response.dart';
import 'package:ticket_api/model/verify_purchase_response.dart';

part 'ticket_api.g.dart';

@RestApi()
abstract class TicketApiClient {
  factory TicketApiClient(
    Dio dio, {
    String baseUrl,
  }) = _TicketApiClient;

  @POST('/v1/verify_purchase')
  Future<VerifyPurchaseResponse> verifyPurchase({
    @Query('session_id') required String sessionId,
    @Header('Authorization') required String authorization,
  });

  @GET('/v1/promotion')
  Future<GetPromotionResponse> getPromotion({
    @Query('code') required String code,
  });

  @POST('/v1/promotion')
  Future<PostPromotionResponse> postPromotion({
    @Header('Authorization') required String authorization,
    @Body() required PostPromotionRequest body,
  });
}
