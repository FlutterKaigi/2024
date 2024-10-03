import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/core/extension/is_mobile.dart';
import 'package:ticket_web/core/gen/fonts.gen.dart';
import 'package:ticket_web/core/provider/language_provider.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class LanguageSelector extends ConsumerWidget {
  const LanguageSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(languageProviderProvider);
    final theme = Theme.of(context);
    final isMobile = MediaQuery.of(context).size.isMobile;

    final card = Card.outlined(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
        side: BorderSide(
          color: theme.colorScheme.onSurface,
        ),
      ),
      child: InkWell(
        onTap: () async {
          if (state == AppLocale.ja) {
            await ref
                .read(languageProviderProvider.notifier)
                .setLanguage(AppLocale.en);
          } else {
            await ref
                .read(languageProviderProvider.notifier)
                .setLanguage(AppLocale.ja);
          }
        },
        child: isMobile
            ? _LanguageSelectorMobile(state: state)
            : _LanguageSelectorDesktop(state: state),
      ),
    );

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: KeyedSubtree(
        key: ValueKey(isMobile),
        child: card,
      ),
      layoutBuilder: (currentChild, previousChildren) => Stack(
        alignment: Alignment.centerRight,
        children: [
          ...previousChildren,
          if (currentChild != null) currentChild,
        ],
      ),
    );
  }
}

class _LanguageSelectorDesktop extends StatelessWidget {
  const _LanguageSelectorDesktop({
    required this.state,
  });

  final AppLocale state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _LanguageText(
            locale: AppLocale.ja,
            isSelected: state == AppLocale.ja,
          ),
          const SizedBox(width: 4),
          const Text(
            '/',
          ),
          const SizedBox(width: 4),
          _LanguageText(
            locale: AppLocale.en,
            isSelected: state == AppLocale.en,
          ),
        ],
      ),
    );
  }
}

class _LanguageSelectorMobile extends StatelessWidget {
  const _LanguageSelectorMobile({
    required this.state,
  });

  final AppLocale state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: switch (state) {
        AppLocale.ja => const _LanguageText(
            locale: AppLocale.ja,
            isSelected: true,
          ),
        AppLocale.en => const _LanguageText(
            locale: AppLocale.en,
            isSelected: true,
          ),
      },
    );
  }
}

class _LanguageText extends StatelessWidget {
  const _LanguageText({
    required this.locale,
    required this.isSelected,
  });

  final AppLocale locale;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final isMobile = MediaQuery.of(context).size.isMobile;
    final defaultStyle =
        (isMobile ? textTheme.titleSmall : textTheme.titleMedium);

    return AnimatedDefaultTextStyle(
      style: defaultStyle!.copyWith(
        fontWeight: isSelected ? FontWeight.bold : null,
        color:
            theme.colorScheme.onSurface.withValues(alpha: isSelected ? 1 : 0.5),
        fontFamily: FontFamily.poppins,
        fontSize: (defaultStyle.fontSize ?? 16) * (isSelected ? 1.0 : 0.8),
      ),
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
      child: Text(
        locale.languageCode.toUpperCase(),
      ),
    );
  }
}
