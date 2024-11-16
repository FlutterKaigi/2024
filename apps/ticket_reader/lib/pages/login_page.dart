import 'package:flutter/material.dart';
import 'package:mesh_gradient/mesh_gradient.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          _Background(),
        ],
      ),
    );
  }
}

class _Background extends StatelessWidget {
  const _Background();

  @override
  Widget build(BuildContext context) {
    final isDark = MediaQuery.platformBrightnessOf(context) == Brightness.dark;

    return SizedBox.expand(
      child: AnimatedMeshGradient(
        colors: [
          Colors.red,
          Colors.purpleAccent,
          Colors.blueAccent,
          Colors.greenAccent,
        ]
            .map(
              (color) =>
                  Color.lerp(color, isDark ? Colors.black : Colors.white, 0.4)!,
            )
            .toList(),
        options: AnimatedMeshGradientOptions(speed: 0.01),
      ),
    );
  }
}
