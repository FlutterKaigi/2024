import 'package:common_data/profile.dart';
import 'package:conference_2024_website/core/extension/size_ex.dart';
import 'package:conference_2024_website/feature/sponsor/data/individual_sponsor_notifier.dart';
import 'package:conference_2024_website/feature/sponsor/ui/components/individual_sponsor_card.dart';
import 'package:conference_2024_website/gen/i18n/strings.g.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class IndividualSponsorView extends ConsumerWidget {
  const IndividualSponsorView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(individualSponsorProvider);

    final i18n = Translations.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;

    return switch (state) {
      AsyncData(:final value) when value.isNotEmpty => Column(
          children: [
            const Row(),
            Text(
              i18n.sponsor.individual.title,
              style: textTheme.availableFonts.poppins.regular.copyWith(
                fontSize: 48,
              ),
            ),
            const Gap(40),
            _IndividualSponsorCards(sponsors: value),
          ],
        ),
      _ => const SizedBox.shrink(),
    };
  }
}

class _IndividualSponsorCards extends StatelessWidget {
  const _IndividualSponsorCards({
    required this.sponsors,
  });

  final List<ProfileWithSns> sponsors;

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.sizeOf(context).isMobile;
    return Wrap(
      runSpacing: IndividualSponsorCard.margin(isMobile: isMobile),
      alignment: WrapAlignment.center,
      children: sponsors
          .map((sponsor) => IndividualSponsorCard(sponsor: sponsor))
          .toList(),
    );
  }
}
