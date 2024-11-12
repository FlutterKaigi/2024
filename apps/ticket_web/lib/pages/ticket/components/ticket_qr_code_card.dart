import 'package:common_data/ticket.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:ticket_web/core/extension/is_mobile.dart';
import 'package:ticket_web/core/gen/assets.gen.dart';
import 'package:ticket_web/core/provider/environment.dart';
import 'package:ticket_web/feature/auth/data/auth_notifier.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';
import 'package:url_launcher/link.dart';

class TicketQrCodeCard extends HookConsumerWidget {
  const TicketQrCodeCard({
    required this.ticket,
    super.key,
  });

  final Ticket ticket;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i18n = Translations.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final isMobile = MediaQuery.sizeOf(context).isMobile;

    final environment = ref.watch(environmentProvider);
    final supabaseAccessToken = ref.watch(supabaseAccessTokenProvider);
    final walletUri = useMemoized(
      () => Uri.parse(
        '${environment.ticketApiBaseUrl}/v1/wallet/pass.pkpass'
        '?authorization=$supabaseAccessToken',
      ),
      [environment, supabaseAccessToken],
    );

    return Card.outlined(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(isMobile ? 4 : 16),
        side: BorderSide(
          color: theme.colorScheme.surfaceDim,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(isMobile ? 16 : 24),
        child: Column(
          children: [
            Text(
              i18n.ticketPage.qrCode.title,
              style: (isMobile ? textTheme.titleMedium : textTheme.titleLarge)
                  ?.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 16),
            QrImageView(
              data: ticket.id,
              size: isMobile ? 200 : 250,
              backgroundColor: Colors.white,
            ),
            const SizedBox(height: 8),
            Text(
              i18n.ticketPage.qrCode.description,
              textAlign: TextAlign.center,
              style: (isMobile ? textTheme.bodySmall : textTheme.bodyMedium)
                  ?.copyWith(
                color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Link(
                target: LinkTarget.blank,
                uri: walletUri,
                builder: (context, followLink) => InkWell(
                  onTap: followLink,
                  child: Image(
                    fit: BoxFit.contain,
                    image: Assets.images.addToAppleWallet.provider(),
                    height: 48,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
