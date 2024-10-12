import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/core/extension/is_mobile.dart';
import 'package:ticket_web/feature/profile/data/profile_notifier.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class WarningForPersonalSponsorCard extends ConsumerWidget {
  const WarningForPersonalSponsorCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(profileNotifierProvider);
    print('isPublished: ${profile.valueOrNull?.isPublished}');

    final i18n = Translations.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final isMobile = MediaQuery.sizeOf(context).isMobile;

    return SizedBox(
      width: desktopThreshold / 3 * 2,
      child: Card.outlined(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        color: theme.colorScheme.errorContainer,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.info,
                    size: 24,
                    color: theme.colorScheme.onErrorContainer,
                  ),
                  const SizedBox(width: 8),
                  Flexible(
                    child: Text(
                      i18n.ticketPage.warningForPersonalSponsor.title,
                      style: (isMobile
                              ? textTheme.titleSmall
                              : textTheme.titleMedium)
                          ?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.onErrorContainer,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                i18n.ticketPage.warningForPersonalSponsor.description,
                style: (isMobile ? textTheme.bodySmall : textTheme.bodyMedium)
                    ?.copyWith(
                  color:
                      theme.colorScheme.onErrorContainer.withValues(alpha: 0.7),
                ),
              ),
              const SizedBox(height: 16),
              switch (profile) {
                AsyncData(:final value) when value != null =>
                  _ProfilePublishButtons(
                    isPublished: value.isPublished ?? false,
                    onPressed: (isPublished) async {
                      await ref
                          .read(profileNotifierProvider.notifier)
                          .updateProfileIsPublished(isPublished: isPublished);
                    },
                  ),
                _ => const SizedBox.shrink(),
              },
            ],
          ),
        ),
      ),
    );
  }
}

class _ProfilePublishButtons extends StatelessWidget {
  const _ProfilePublishButtons({
    required this.isPublished,
    this.onPressed,
  });

  // ignore: avoid_positional_boolean_parameters
  final void Function(bool isPublished)? onPressed;
  final bool isPublished;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final isMobile = MediaQuery.sizeOf(context).isMobile;

    final i18n = Translations.of(context);

    return Wrap(
      spacing: 8,
      children: [
        Card.outlined(
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: () => onPressed?.call(true),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Radio(
                    value: true,
                    groupValue: isPublished,
                    onChanged: (value) {
                      if (value != null) {
                        onPressed?.call(value);
                      }
                    },
                  ),
                  Flexible(
                    child: Text(
                      i18n.ticketPage.warningForPersonalSponsor.buttons
                          .publishProfile,
                      style:
                          isMobile ? textTheme.bodySmall : textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card.outlined(
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: () => onPressed?.call(false),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Radio(
                    value: false,
                    groupValue: isPublished,
                    onChanged: (value) {
                      if (value != null) {
                        onPressed?.call(!value);
                      }
                    },
                  ),
                  Flexible(
                    child: Text(
                      i18n.ticketPage.warningForPersonalSponsor.buttons
                          .doNotPublishProfile,
                      style:
                          isMobile ? textTheme.bodySmall : textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
