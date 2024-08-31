import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_app_features_about/l10n.dart';
import 'package:packages_app_features_about/src/ui/staff/notifer/staff_notifer.dart';
import 'package:packages_app_features_about/src/ui/staff/staff_card_widget.dart';

/// スタッフ一覧ページ
class StaffPage extends HookConsumerWidget {
  const StaffPage({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final l = L10nAbout.of(context);

    final staffAsyncValue = ref.watch(staffNotifierProvider);

    return Scaffold(
      body: staffAsyncValue.when(
        data: (staffList) {
          return CustomScrollView(
            slivers: [
              SliverAppBar.large(
                title: Text(
                  l.staffs,
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: staffList.length,
                  (context, index) {
                    final staffData = staffList[index];
                    return StaffCardWidget(
                      name: staffData.name,
                      imageUrl: staffData.iconUrl.toString(),
                    );
                  },
                ),
              ),
            ],
          );
        },
        error: (error, stackTrace) {
          return Center(
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.red,
                child: Text(stackTrace.toString()),
              ),
            ),
          );
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
