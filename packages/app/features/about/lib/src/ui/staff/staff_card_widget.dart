import 'package:app_cores_designsystem/common_assets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

const _imageSize = 56.0;

/// スタッフ情報のアイテム
class StaffCardWidget extends StatelessWidget {
  const StaffCardWidget({
    required String name,
    required String imageUrl,
    bool hasImageBorder = true,
    super.key,
  })  : _name = name,
        _imageUrl = imageUrl,
        _hasImageBorder = hasImageBorder;

  final String _name;
  final String _imageUrl;
  final bool _hasImageBorder;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      leading: Image.network(
        _imageUrl,
        width: _imageSize,
        height: _imageSize,
        cacheWidth: _imageSize.toInt(),
        cacheHeight: _imageSize.toInt(),
        frameBuilder: (context, child, _, __) => _BorderedImage(
          hasBorder: _hasImageBorder,
          child: child,
        ),
        errorBuilder: (context, error, stackTrace) => _BorderedImage(
          hasBorder: _hasImageBorder,
          child: CommonAssets.logo.mainLogo.svg(
            width: 32,
            height: 32,
          ),
        ),
        fit: BoxFit.cover,
      ),
      title: Text(
        _name,
        style: theme.textTheme.bodyMedium,
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    );
  }
}

class _BorderedImage extends StatelessWidget {
  const _BorderedImage({
    required this.child,
    this.hasBorder = true,
  });

  final bool hasBorder;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _imageSize,
      height: _imageSize,
      decoration: BoxDecoration(
        border: hasBorder
            ? Border.all(
                color: Theme.of(context).colorScheme.secondary,
              )
            : null,
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).colorScheme.surface,
      ),
      alignment: Alignment.center,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: child,
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Widget>('child', child));
    properties.add(DiagnosticsProperty<bool>('hasBorder', hasBorder));
  }
}
