import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class AppButton extends StatelessWidget {
  factory AppButton.primaryLink({
    required Widget label,
    required Uri link,
    Widget? leading,
    Widget? trailing = _defaultTrailing,
    LinkTarget target = LinkTarget.blank,
    Key? key,
  }) =>
      AppButton._(
        label: label,
        leading: leading,
        trailing: trailing,
        link: link,
        type: _GradientType.primary,
        target: target,
        key: key,
      );

  factory AppButton.primary({
    required Widget label,
    required void Function() onPressed,
    Widget? leading,
    Widget? trailing = _defaultTrailing,
    Key? key,
  }) =>
      AppButton._(
        label: label,
        leading: leading,
        trailing: trailing,
        onPressed: onPressed,
        type: _GradientType.primary,
        key: key,
      );

  factory AppButton.secondaryLink({
    required Widget label,
    required Uri link,
    Widget? leading,
    Widget? trailing = _defaultTrailing,
    LinkTarget target = LinkTarget.blank,
    Key? key,
  }) =>
      AppButton._(
        label: label,
        leading: leading,
        trailing: trailing,
        link: link,
        type: _GradientType.secondary,
        target: target,
        key: key,
      );

  factory AppButton.secondary({
    required Widget label,
    required void Function() onPressed,
    Widget? leading,
    Widget? trailing = _defaultTrailing,
    Key? key,
  }) =>
      AppButton._(
        label: label,
        leading: leading,
        trailing: trailing,
        onPressed: onPressed,
        type: _GradientType.secondary,
        key: key,
      );

  const AppButton._({
    required this.label,
    required _GradientType type,
    this.leading,
    this.trailing,
    this.link,
    this.onPressed,
    this.target,
    super.key,
  })  : assert(
          !(link != null && onPressed != null),
          'Cannot provide both a link and an onPressed callback.',
        ),
        _type = type;

  static const _defaultTrailing = Icon(
    Icons.arrow_forward_ios,
    size: 12,
    color: Colors.black,
  );

  final Widget label;
  final Widget? leading;
  final Widget? trailing;

  final _GradientType _type;

  final Uri? link;
  final void Function()? onPressed;
  final LinkTarget? target;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final gradientTheme = theme.customThemeExtension.gradientTheme;
    final textTheme = theme.customThemeExtension.textTheme;

    final button = Link(
      uri: link,
      target: target ?? LinkTarget.defaultTarget,
      builder: (context, followLink) {
        return Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: followLink ?? onPressed,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 12,
              ),
              child: Row(
                children: [
                  if (trailing != null)
                    Visibility.maintain(
                      visible: false,
                      child: trailing!,
                    ),
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (leading != null) ...[
                            leading!,
                            const SizedBox(width: 8),
                          ],
                          DefaultTextStyle(
                            style: textTheme.label.copyWith(
                              height: 1,
                            ),
                            child: label,
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (trailing != null) trailing!,
                ],
              ),
            ),
          ),
        );
      },
    );

    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: switch (_type) {
            _GradientType.primary => gradientTheme.primary,
            _GradientType.secondary => gradientTheme.secondary,
          },
        ),
        child: button,
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Uri?>('link', link));
    properties
        .add(ObjectFlagProperty<void Function()?>.has('onPressed', onPressed));
    properties.add(EnumProperty<_GradientType>('_type', _type));
    properties.add(DiagnosticsProperty<LinkTarget>('target', target));
  }
}

enum _GradientType {
  primary,
  secondary,
  ;
}
