import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignInWithGoogleButton extends StatelessWidget {
  const SignInWithGoogleButton({
    this.onPressed,
    super.key,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          'assets/sign_in_with_google.svg',
        ),
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
