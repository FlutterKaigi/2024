import 'package:app_features_about/l10n.dart';
import 'package:app_features_about/src/ui/staff/staff_card_widget.dart';
import 'package:common_data/staff.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
    final staffMembersAsyncValue = ref.watch(staffMembersProvider);
    return Scaffold(
      body: staffMembersAsyncValue.when(
        data: (staffMembers) {
          return CustomScrollView(
            slivers: [
              SliverAppBar.large(
                title: Text(
                  l.staffs,
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: staffMembers.length,
                  (context, index) {
                    final staffData = staffMembers[index];
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
