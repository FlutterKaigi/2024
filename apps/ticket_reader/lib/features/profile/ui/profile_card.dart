import 'package:common_data/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_reader/features/profile/ui/profile_avatar.dart';
import 'package:ticket_reader/features/profile/ui/role_chip.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    required this.profile,
    super.key,
  });

  final ProfileWithSns profile;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      color: colorScheme.primaryContainer,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: ProfileAvatar.profileWithSns(
                profile: profile,
                size: 48,
              ),
              title: Text(
                profile.name,
              ),
              subtitle: Row(
                children: [
                  Flexible(
                    child: Text(
                      profile.id,
                      style: GoogleFonts.jetBrainsMono(),
                    ),
                  ),
                  const SizedBox(width: 4),
                  IconButton(
                    onPressed: () async {
                      await Clipboard.setData(
                        ClipboardData(text: profile.id),
                      );
                      await HapticFeedback.lightImpact();
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Copied to clipboard'),
                          ),
                        );
                      }
                    },
                    icon: const Icon(Icons.copy),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 4),
            RoleChip(role: profile.role),
          ],
        ),
      ),
    );
  }
}
