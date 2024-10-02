import 'package:flutter/material.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class InformationForStudents extends StatelessWidget {
  const InformationForStudents({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);

    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: colorScheme.tertiaryContainer,
      elevation: 1,
      child: DefaultTextStyle(
        style: TextStyle(
          color: colorScheme.onTertiaryContainer,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                i18n.homePage.tickets.student.name,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onTertiaryContainer,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                i18n.homePage.tickets.student.description,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onTertiaryContainer.withValues(alpha: 0.7),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
