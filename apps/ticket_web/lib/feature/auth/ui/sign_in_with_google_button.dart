import 'package:flutter/material.dart';
import 'package:vector_graphics/vector_graphics_compat.dart';

class SignInWithGoogleButton extends StatelessWidget {
  const SignInWithGoogleButton({
    this.onPressed,
    super.key,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    const svgImage = VectorGraphic(
      loader: AssetBytesLoader('assets/images/svg/sign_in_with_google.svg'),
    );

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
