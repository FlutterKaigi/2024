import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:packages_app_features_about/l10n.dart';
import 'package:packages_app_features_about/src/ui/staff/staff_card_widget.dart';

/// スポンサー一覧ページ
class SponsorsPage extends StatelessWidget {
  const SponsorsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l = L10nAbout.of(context);
    const padding = EdgeInsets.all(16);
    const spacing = 8.0;
    const childAspectRatio = 16 / 9;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(
              l.contributors,
            ),
          ),
          SliverPadding(
            padding: padding,
            sliver: SliverGrid.builder(
              itemBuilder: (context, index) => Container(
                color: Colors.red,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: spacing,
                crossAxisSpacing: spacing,
                crossAxisCount: 1,
                childAspectRatio: childAspectRatio,
              ),
              itemCount: 1,
            ),
          ),
          const SliverGap(16),
          SliverPadding(
            padding: padding,
            sliver: SliverGrid.builder(
              itemBuilder: (context, index) => Container(
                color: Colors.blue,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: spacing,
                crossAxisSpacing: spacing,
                crossAxisCount: 2,
                childAspectRatio: childAspectRatio,
              ),
              itemCount: 4,
            ),
          ),
          const SliverGap(16),
          SliverPadding(
            padding: padding,
            sliver: SliverGrid.builder(
              itemBuilder: (context, index) => Container(
                color: Colors.yellow,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: spacing,
                crossAxisSpacing: spacing,
                crossAxisCount: 3,
                childAspectRatio: childAspectRatio,
              ),
              itemCount: 6,
            ),
          ),
          const SliverGap(16),
        ],
      ),
    );
  }
}
