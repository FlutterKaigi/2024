import 'package:app_cores_designsystem/providers.dart';
import 'package:app_cores_designsystem/ui.dart';
import 'package:app_cores_settings/ui.dart';
import 'package:app_features_venue/l10n.dart';
import 'package:app_features_venue/src/gen/assets/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VenuePage extends ConsumerWidget {
  const VenuePage({
    super.key,
  });

  AssetGenImage _getFloorMap(BuildContext context, LocalizationMode mode) {
    switch (mode) {
      case LocalizationMode.system:
        final systemLocale = Localizations.localeOf(context);
        return systemLocale.languageCode == 'en'
            ? Assets.images.floorMapEn
            : Assets.images.floorMapJa;
      case LocalizationMode.japanese:
        return Assets.images.floorMapJa;
      case LocalizationMode.english:
        return Assets.images.floorMapEn;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L10nVenue.of(context);
    final localizationMode = ref.watch(localizationModeStoreProvider);
    final floorMap = _getFloorMap(context, localizationMode);

    return Scaffold(
      appBar: AppBar(
        leading: const Center(
          child: MainLogo(),
        ),
        leadingWidth: 48,
        titleSpacing: 4,
        centerTitle: false,
        title: Text(l.venuePageTitle),
        actions: const [
          SettingsButton(),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 16,
          ),
          child: SizedBox(
            width: 1000,
            height: 800,
            child: InteractiveViewer(
              minScale: 1,
              maxScale: 3,
              child: floorMap.image(
                width: 48,
                height: 48,
                semanticLabel: l.venueFloorMap,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
