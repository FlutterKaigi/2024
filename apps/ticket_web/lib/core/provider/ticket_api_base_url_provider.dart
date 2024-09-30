import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ticket_api_base_url_provider.g.dart';

@Riverpod(keepAlive: true)
String ticketApiBaseUrl(TicketApiBaseUrlRef ref) {
  // ignore: do_not_use_environment
  const baseUrl = String.fromEnvironment('TICKET_API_BASE_URL');
  if (baseUrl.isEmpty) {
    throw Exception('TICKET_API_BASE_URL is not set');
  }
  return baseUrl;
}
