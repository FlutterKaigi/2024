import 'package:app_cores_core/providers.dart';
import 'package:app_cores_core/util.dart';
import 'package:app_cores_designsystem/providers.dart';
import 'package:app_cores_settings/l10n.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l = L10nSettings.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(l.settingsPageTitle),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const _PushNotificationTile(),
              const _ThemeModeTile(),
              const _LocalizationModeTile(),
              const _FontFamilyTile(),
              const _ResetSettingsTile(),
            ]),
          ),
        ],
      ),
    );
  }
}

class _PushNotificationTile extends ConsumerWidget {
  const _PushNotificationTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L10nSettings.of(context);
    final status = ref.watch(notificationPermissionProvider);

    return switch (status) {
      AsyncData(value: final type) => ListTile(
          title: Text(l.pushNotification),
          subtitle: Text(
            switch (type) {
              NotificationPermission.granted =>
                l.pushNotificationAuthorized,
              NotificationPermission.denied =>
                l.pushNotificationDenied,
              NotificationPermission.provisional =>
                l.pushNotificationProvisional,
              NotificationPermission.restricted =>
                l.pushNotificationRestricted,
              NotificationPermission.limited =>
                l.pushNotificationLimited,
              NotificationPermission.permanentlyDenied =>
                l.pushNotificationPermanentlyDenied,
            },
          ),
          onTap: () async {
            final String message;
            switch (type) {
              case NotificationPermission.granted:
                message = l.pushNotificationMessageAlreadyAuthorized;
              case NotificationPermission.denied:
                final shouldShowRequestRationale =
                    await Permission.notification.shouldShowRequestRationale;
                if (shouldShowRequestRationale) {
                  if (!context.mounted) {
                    return;
                  }

                  await showDialog<void>(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text(l.pushNotificationPrompt),
                      actions: [
                        TextButton(
                          child: Text(l.cancel),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      ],
                    ),
                  );
                }

                final newPermission = await Permission.notification.request();
                switch (newPermission) {
                  case NotificationPermission.granted:
                  case NotificationPermission.restricted:
                  case NotificationPermission.limited:
                  case NotificationPermission.provisional:
                    message = l.pushNotificationMessageAuthorized;

                    await subscribeTopics(ref);
                  case NotificationPermission.denied:
                  case NotificationPermission.permanentlyDenied:
                    message = l.pushNotificationMessageDenied;
                }

                /// invalidate the providers to rebuild the UI
                ref.invalidate(notificationPermissionProvider);

              case NotificationPermission.restricted:
              case NotificationPermission.limited:
              case NotificationPermission.permanentlyDenied:
              case NotificationPermission.provisional:
                message = l.pushNotificationMessageSettings;
            }

            if (context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                ),
              );
            }
          },
        ),
      _ => const SizedBox(
          height: 56,
          child: Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        ),
    };
  }
}

class _LocalizationModeTile extends ConsumerWidget {
  const _LocalizationModeTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L10nSettings.of(context);
    final localizationMode = ref.watch(localizationModeStoreProvider);
    return ListTile(
      onTap: () async {
        final result = await showDialog<LocalizationMode>(
          context: context,
          builder: (context) => _ListSelectionDialog(
            values: LocalizationMode.values,
            title: l.localizationMode,
            tileTitleBuilder: (mode) => Text(mode.label(l)),
            initialValue: localizationMode,
          ),
        );
        if (result != null) {
          await ref.read(localizationModeStoreProvider.notifier).update(result);
        }
      },
      title: Text(l.localizationMode),
      subtitle: Text(localizationMode.label(l)),
    );
  }
}

class _ThemeModeTile extends ConsumerWidget {
  const _ThemeModeTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L10nSettings.of(context);
    final themeMode = ref.watch(themeModeStoreProvider);
    return ListTile(
      onTap: () async {
        final result = await showDialog<ThemeMode>(
          context: context,
          builder: (context) => _ListSelectionDialog(
            values: ThemeMode.values,
            title: l.theme,
            tileTitleBuilder: (mode) => Text(mode.label(l)),
            initialValue: themeMode,
          ),
        );
        if (result != null) {
          ref.read(themeModeStoreProvider.notifier).update(result);
        }
      },
      title: Text(l.theme),
      subtitle: Text(themeMode.label(l)),
    );
  }
}

class _FontFamilyTile extends ConsumerWidget {
  const _FontFamilyTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L10nSettings.of(context);
    final fontFamily = ref.watch(fontFamilyStoreProvider);
    return ListTile(
      onTap: () async {
        final result = await showDialog<FontFamily>(
          context: context,
          builder: (context) => _ListSelectionDialog(
            values: FontFamily.values,
            title: l.fontFamily,
            tileTitleBuilder: (fontFamily) => Text(fontFamily.label),
            initialValue: fontFamily,
          ),
        );
        if (result != null) {
          ref.read(fontFamilyStoreProvider.notifier).update(result);
        }
      },
      title: Text(l.fontFamily),
      subtitle: Text(fontFamily.label),
    );
  }
}

class _ResetSettingsTile extends ConsumerWidget {
  const _ResetSettingsTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L10nSettings.of(context);
    return ListTile(
      onTap: () async {
        await showDialog<void>(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(l.resetPreferences),
            actions: <Widget>[
              TextButton(
                child: Text(l.cancel),
                onPressed: () => Navigator.of(context).pop(),
              ),
              TextButton(
                child: Text(l.ok),
                onPressed: () async {
                  await ref.read(sharedPreferencesInstanceProvider).clear();

                  /// invalidate SharedPreferencesProvider
                  ref.invalidate(sharedPreferencesInstanceProvider);

                  /// invalidate all providers
                  /// which depend on [sharedPreferencesInstanceProvider]
                  ref
                    ..invalidate(themeModeStoreProvider)
                    ..invalidate(localizationModeStoreProvider)
                    ..invalidate(fontFamilyStoreProvider);

                  if (context.mounted) {
                    Navigator.of(context).pop();
                  }
                },
              ),
            ],
          ),
        );
      },
      title: Text(l.resetPreferences),
    );
  }
}

class _ListSelectionDialog<T> extends HookWidget {
  const _ListSelectionDialog({
    required this.values,
    required this.title,
    required this.tileTitleBuilder,
    this.initialValue,
    super.key,
  });

  final String title;
  final Widget Function(T value) tileTitleBuilder;
  final List<T> values;
  final T? initialValue;

  @override
  Widget build(BuildContext context) {
    final l = L10nSettings.of(context);
    final currentSelection = useState<T?>(initialValue);
    return AlertDialog(
      title: Text(title),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (final value in values)
            RadioListTile<T>(
              title: tileTitleBuilder(value),
              value: value,
              groupValue: currentSelection.value,
              onChanged: (value) {
                currentSelection.value = value;
              },
            ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(l.cancel),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(currentSelection.value),
          child: Text(l.ok),
        ),
      ],
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('title', title));
    properties.add(
      ObjectFlagProperty<Widget Function(T value)>.has(
        'tileTitleBuilder',
        tileTitleBuilder,
      ),
    );
    properties.add(IterableProperty<T>('values', values));
    properties.add(DiagnosticsProperty<T?>('initialValue', initialValue));
  }
}

extension on ThemeMode {
  String label(L10nSettings l) => switch (this) {
        ThemeMode.system => l.system,
        ThemeMode.light => l.light,
        ThemeMode.dark => l.dark,
      };
}

extension on LocalizationMode {
  String label(L10nSettings l) => switch (this) {
        LocalizationMode.system => l.system,
        LocalizationMode.japanese => l.localizationModeJa,
        LocalizationMode.english => l.localizationModeEn,
      };
}
