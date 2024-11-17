import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mesh_gradient/mesh_gradient.dart';
import 'package:ticket_reader/core/router/router.dart';
import 'package:ticket_reader/features/auth/data/auth_notifier.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          _Background(),
          SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: _AppIcon(),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      _LoginButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
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
          Colors.purpleAccent,
          Colors.blueAccent,
          Colors.blue,
          Colors.lightBlueAccent,
        ]
            .map(
              (color) =>
                  Color.lerp(color, isDark ? Colors.black : Colors.white, 0.5)!,
            )
            .toList(),
        options: AnimatedMeshGradientOptions(
          speed: 0.01,
        ),
      ),
    );
  }
}

class _AppIcon extends StatelessWidget {
  const _AppIcon();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Column(
      children: [
        Center(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset(
                'assets/icon.webp',
                height: 80,
                width: 80,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          'FlutterKaigi 2024\nTicket Reader',
          style: textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 36,
            color: theme.colorScheme.inverseSurface.withValues(alpha: 0.9),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class _LoginButton extends ConsumerWidget {
  const _LoginButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
      ),
      child: InkWell(
        onTap: () async {
          final authNotifier = ref.read(authNotifierProvider.notifier);
          final result = await authNotifier.signInWithGoogle();
          if (result && context.mounted) {
            const HomeRoute().go(context);
          }
        },
        child: SvgPicture.asset(
          'assets/sign_in_with_google.svg',
        ),
      ),
    );
  }
}
