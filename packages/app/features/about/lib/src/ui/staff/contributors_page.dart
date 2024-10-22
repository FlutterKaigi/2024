import 'package:app_features_about/l10n.dart';
import 'package:app_features_about/src/ui/staff/staff_card_widget.dart';
import 'package:common_data/contributor.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// コントリビューター一覧ページ
class ContributorsPage extends ConsumerWidget {
  const ContributorsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L10nAbout.of(context);
    final contributorsAsyncValue = ref.watch(contributorsProvider);
    return Scaffold(
      body: contributorsAsyncValue.when(
        data: (contributors) {
          return CustomScrollView(
            slivers: [
              SliverAppBar.large(
                title: Text(
                  l.contributors,
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: contributors.length,
                  (context, index) {
                    final contributor = contributors[index];
                    return StaffCardWidget(
                      name: contributor.name,
                      imageUrl: contributor.avatarUrl.toString(),
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
