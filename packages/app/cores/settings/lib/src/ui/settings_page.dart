import 'package:app_cores_designsystem/providers.dart';
import 'package:app_cores_settings/l10n.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
              const _FontFamilyTile(),
            ]),
          ),
        ],
      ),
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
