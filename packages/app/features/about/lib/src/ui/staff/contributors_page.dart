import 'package:app_cores_core/ui.dart';
import 'package:app_features_about/l10n.dart';
import 'package:app_features_about/src/ui/staff/staff_card_widget.dart';
import 'package:flutter/material.dart';

/// コントリビューター一覧ページ
class ContributorsPage extends StatelessWidget {
  const ContributorsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l = L10nAbout.of(context);
    return Scaffold(
      body: CustomScrollView(
        // TODO: データを繋ぎこんだらスクロールできるようにする
        physics: const NeverScrollableScrollPhysics(),
        slivers: [
          SliverAppBar.large(
            title: Text(
              l.contributors,
            ),
          ),

          // TODO:モックデータとしてWidgetを出してます。
          // https://github.com/FlutterKaigi/2024/issues/122
          SliverFillRemaining(
            child: ComingSoonCover(
              child: ListView.builder(
                itemBuilder: (context, index) => const StaffCardWidget(
                  hasImageBorder: false,
                  name: 'Contributor',
                  imageUrl:
                      'https://pbs.twimg.com/profile_images/1797556194556710912/ZncGhPyV_400x400.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
