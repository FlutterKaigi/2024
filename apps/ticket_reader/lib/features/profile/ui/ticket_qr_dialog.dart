import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_flutter/qr_flutter.dart';

class TicketQrDialog extends StatelessWidget {
  const TicketQrDialog({
    required this.ticketId,
    super.key,
  });

  final String ticketId;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'チケットQRコード',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            QrImageView(
              data: ticketId,
              size: 250,
              backgroundColor: Colors.white,
            ),
            const SizedBox(height: 16),
            Text(
              'T-${ticketId.split('-')[0]}',
              style: theme.textTheme.bodyLarge?.copyWith(
                fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
              ),
            ),
            const SizedBox(height: 24),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('閉じる'),
            ),
          ],
        ),
      ),
    );
  }
}
