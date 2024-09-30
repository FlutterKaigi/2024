// ignore_for_file: do_not_use_environment

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'environment.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
Environment environment(EnvironmentRef ref) =>
    Environment.fromEnvironmentValues();

class Environment {
  const Environment._({
    required this.supabaseUrl,
    required this.supabaseAnonKey,
    required this.stripePaymentGeneralUrl,
    required this.stripePaymentInvitationUrl,
    required this.stripePersonalSponsorUrl,
    required this.ticketApiBaseUrl,
    required this.environmentType,
  });

  factory Environment.fromEnvironmentValues() {
    final result = Environment._(
      supabaseUrl: const String.fromEnvironment('SUPABASE_URL'),
      supabaseAnonKey: const String.fromEnvironment('SUPABASE_ANON_KEY'),
      stripePaymentGeneralUrl:
          const String.fromEnvironment('STRIPE_PAYMENT_GENERAL_URL'),
      stripePaymentInvitationUrl:
          const String.fromEnvironment('STRIPE_PAYMENT_INVITATION_URL'),
      stripePersonalSponsorUrl:
          const String.fromEnvironment('STRIPE_PERSONAL_SPONSOR_URL'),
      ticketApiBaseUrl: const String.fromEnvironment('TICKET_API_BASE_URL'),
      environmentType: EnvironmentType.values.firstWhere(
        (e) =>
            e.toString() ==
            const String.fromEnvironment('ENVIRONMENT').toLowerCase(),
      ),
    );
    assert(result.supabaseUrl.isNotEmpty, 'SUPABASE_URL is empty');
    assert(result.supabaseAnonKey.isNotEmpty, 'SUPABASE_ANON_KEY is empty');
    assert(
      result.stripePaymentGeneralUrl.isNotEmpty,
      'STRIPE_PAYMENT_GENERAL_URL is empty',
    );
    assert(
      result.stripePaymentInvitationUrl.isNotEmpty,
      'STRIPE_PAYMENT_INVITATION_URL is empty',
    );
    assert(
      result.stripePersonalSponsorUrl.isNotEmpty,
      'STRIPE_PERSONAL_SPONSOR_URL is empty',
    );
    assert(result.ticketApiBaseUrl.isNotEmpty, 'TICKET_API_BASE_URL is empty');

    return result;
  }

  final String supabaseUrl;
  final String supabaseAnonKey;
  final String stripePaymentGeneralUrl;
  final String stripePaymentInvitationUrl;
  final String stripePersonalSponsorUrl;
  final String ticketApiBaseUrl;
  final EnvironmentType environmentType;
}

enum EnvironmentType {
  development,
  staging,
  production,
  ;
}
