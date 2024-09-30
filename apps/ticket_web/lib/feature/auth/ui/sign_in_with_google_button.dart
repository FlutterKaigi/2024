import 'package:flutter/material.dart';
import 'package:ticket_web/core/gen/assets.gen.dart';

class SignInWithGoogleButton extends StatelessWidget {
  const SignInWithGoogleButton({
    this.onPressed,
    super.key,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final svgImage = Assets.images.svg.signInWithGoogleSvg.svg();

    return Stack(
      children: [
        svgImage,
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(18),
              onTap: onPressed,
            ),
          ),
        ),
      ],
    );
  }
}
