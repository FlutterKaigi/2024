import 'package:conference_2024_website/ui/home/components/background/background_bottom.dart';
import 'package:conference_2024_website/ui/home/components/background/background_top.dart';
import 'package:conference_2024_website/ui/home/components/title_and_logo.dart';
import 'package:flutter/material.dart';

final class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Stack(
            children: [
              _Background(),
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    _Body(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TitleAndLogo(),
      ],
    );
  }
}

class _Background extends StatelessWidget {
  const _Background();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        BackgroundTop(),
        BackgroundBottom(),
      ],
    );
  }
}
