import 'package:flutter/material.dart';

class InformationForStudents extends StatelessWidget {
  const InformationForStudents({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      color: colorScheme.secondaryContainer,
      child: DefaultTextStyle(
        style: TextStyle(
          color: colorScheme.onSecondaryContainer,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Row(),
              Text(
                '学割について',
                style: theme.textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              Text(
                ' ~~ 学割についての説明 ~~ ' * 5,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
