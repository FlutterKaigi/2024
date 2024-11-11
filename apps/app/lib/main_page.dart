import 'dart:async';

import 'package:app_cores_core/providers.dart';
import 'package:app_cores_designsystem/ui.dart';
import 'package:common_data/app_minimum_version.dart';
import 'package:conference_2024_app/force_update_dialog.dart';
import 'package:conference_2024_app/gen/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pub_semver/pub_semver.dart';

class MainPage extends HookConsumerWidget {
  const MainPage({
    required this.navigationShell,
    super.key,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L10n.of(context);
    final isMobile = ScreenSizeProvider.of(context).isMobile;

    final targetPlatform = Theme.of(context).platform;
    final platform = switch (targetPlatform) {
      TargetPlatform.iOS || TargetPlatform.macOS => AppPlatform.ios,
      _ => AppPlatform.android,
    };

    final destinations = [
      NavigationDestination(
        label: l.mainPageNavigationBarLabelSessions,
        icon: const Icon(Icons.calendar_month_outlined),
        selectedIcon: const Icon(Icons.calendar_month),
      ),
      NavigationDestination(
        label: l.mainPageNavigationBarLabelVenue,
        icon: const Icon(Icons.meeting_room_outlined),
        selectedIcon: const Icon(Icons.meeting_room),
      ),
      NavigationDestination(
        label: l.mainPageNavigationBarLabelNews,
        icon: const Icon(Icons.notifications_outlined),
        selectedIcon: const Icon(Icons.notifications),
      ),
      NavigationDestination(
        label: l.mainPageNavigationBarLabelAbout,
        icon: const Icon(Icons.info_outlined),
        selectedIcon: const Icon(Icons.info),
      ),
    ];

    useEffect(
      () {
        bool shouldShowForceUpdateDialog(AppMinimumVersion? appMinimumVersion) {
          if (appMinimumVersion == null) {
            return false;
          }
          final versionText = ref.read(
            packageInfoInstanceProvider.select(
              (v) => '${v.version}+${v.buildNumber}',
            ),
          );
          final version = Version.parse(versionText);
          return version < appMinimumVersion.version;
        }

        // 必要あれば強制バージョンアップダイアログを表示する
        void needShowForceUpdateDialog(AppMinimumVersion? appMinimumVersion) {
          if (!shouldShowForceUpdateDialog(appMinimumVersion)) {
            return;
          }
          unawaited(
            ForceUpdateDialog.show(
              context: context,
              requiredVersion: appMinimumVersion!,
            ),
          );
        }

        WidgetsBinding.instance.addPostFrameCallback((_) async {
          final appMinimumVersion = await ref.read(
            getAppMinimumVersionProvider(
              platform: platform,
            ).future,
          );

          final shouldShow = shouldShowForceUpdateDialog(appMinimumVersion);
          if (shouldShow && context.mounted) {
            unawaited(
              ForceUpdateDialog.show(
                context: context,
                requiredVersion: appMinimumVersion!,
              ),
            );
          } else {
            // 強制バージョンアップの必要がなければ、アプリの最小バージョンの購読を開始する
            ref.read(
              subscribeAppMinimumVersionProvider(
                platform: platform,
                callback: needShowForceUpdateDialog,
              ),
            );
          }
        });

        final appLifecycleListener = AppLifecycleListener(
          onShow: () {
            // バックグラウンドから復帰した時に購読を再開する
            ref.read(
              subscribeAppMinimumVersionProvider(
                platform: platform,
                callback: needShowForceUpdateDialog,
              ),
            );
          },
          onHide: () {
            // バックグラウンドに移行した時に購読を停止する
            ref.read(unsubscribeAppMinimumVersionProvider);
          },
        );
        return appLifecycleListener.dispose;
      },
      const [],
    );

    return Scaffold(
      body: Row(
        children: [
          if (!isMobile) ...[
            NavigationRail(
              destinations: destinations
                  .map(
                    (e) => NavigationRailDestination(
                      label: Text(e.label),
                      icon: e.icon,
                      selectedIcon: e.selectedIcon,
                    ),
                  )
                  .toList(),
              selectedIndex: navigationShell.currentIndex,
              onDestinationSelected: _onDestinationSelected,
              labelType: NavigationRailLabelType.all,
            ),
            const VerticalDivider(thickness: 1, width: 1),
          ],
          Expanded(
            child: navigationShell,
          ),
        ],
      ),
      bottomNavigationBar: isMobile
          ? NavigationBar(
              destinations: destinations,
              selectedIndex: navigationShell.currentIndex,
              onDestinationSelected: _onDestinationSelected,
            )
          : null,
    );
  }

  void _onDestinationSelected(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
