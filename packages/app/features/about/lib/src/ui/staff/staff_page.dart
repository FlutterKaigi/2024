import 'package:app_features_about/l10n.dart';
import 'package:app_features_about/src/ui/staff/staff_list_item.dart';
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
      body: SafeArea(
        child: staffMembersAsyncValue.when(
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
                    final staff = staffMembers[index];
                    return StaffListItem(
                      staff: staff,
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
      ),
    );
  }
}
