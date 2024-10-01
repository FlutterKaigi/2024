import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_api/model/ticket/get_promotion_response.dart';
import 'package:ticket_api/model/ticket/post_promotion_request.dart';
import 'package:ticket_api/model/ticket/post_promotion_response.dart';
import 'package:ticket_api/model/verify_purchase_response.dart';

export 'package:dio/dio.dart' show DioException, DioExceptionType;

part 'ticket_api.g.dart';

@Riverpod(keepAlive: true)
Dio ticketApiDio(TicketApiDioRef ref) => Dio(
      BaseOptions(
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );

@Riverpod(keepAlive: true)
TicketApiClient ticketApiClient(TicketApiClientRef ref, String baseUrl) =>
    TicketApiClient(
      ref.watch(ticketApiDioProvider),
      baseUrl: baseUrl,
    );

@RestApi()
abstract class TicketApiClient {
  factory TicketApiClient(
    Dio dio, {
    String baseUrl,
  }) = _TicketApiClient;

  @POST('/v1/verify_purchase')
  Future<VerifyPurchaseResponse> verifyPurchase({
    @Query('stripe_session_id') required String stripeSessionId,
    @Header('Authorization') required String authorization,
    @Query('sponsor_id') String? sponsorId,
    @Query('session_id') String? sessionId,
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
