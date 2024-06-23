import 'package:flutter/material.dart';
import 'package:packages_app_features_about/src/ui/staff/staff_card_widget.dart';

/// コントリビューター・スタッフ一覧ページ
class StaffPage extends StatelessWidget {
  const StaffPage({
    required String name,
    super.key,
  }) : _name = name;
  final String _name;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(
          bottom: MediaQuery.paddingOf(context).bottom,
          left: 16,
        ),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            _name,
            style: theme.textTheme.titleLarge!.copyWith(fontSize: 32),
          ),
          const SizedBox(
            height: 28,
          ),
          // TODO:モックデータとしてWidgetを出してます。
          // https://github.com/FlutterKaigi/2024/issues/122
          for (int i = 0; i < 50; i++)
            StaffCardWidget(
              name: 'Staff${++i} さん',
              imageUrl:
                  'https://pbs.twimg.com/profile_images/1797556194556710912/ZncGhPyV_400x400.png',
            ),
        ],
      ),
    );
  }
}
