import 'dart:ui';

import 'package:flutter/material.dart';

class ComingSoonCover extends StatelessWidget {
  const ComingSoonCover({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: child,
        ),
        Positioned.fill(
          child: ColoredBox(
            color: Theme.of(context).colorScheme.onSurface.withAlpha(128),
            child: Center(
              child: Text(
                'Coming Soon',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Theme.of(context).colorScheme.surface,
                    ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
