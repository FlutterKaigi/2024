import 'package:common_data/job_board.dart';
import 'package:conference_2024_website/core/extension/size_ex.dart';
import 'package:conference_2024_website/feature/job_board/data/job_board_notifier.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/link.dart';

class JobBoardView extends ConsumerWidget {
  const JobBoardView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(jobBoardProvider);
    final isMobile = MediaQuery.sizeOf(context).isMobile;

    return switch (state) {
      AsyncData(:final value) => DecoratedBox(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: AnimatedPadding(
            duration: const Duration(milliseconds: 300),
            padding: EdgeInsets.all(isMobile ? 16 : 40),
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                for (final jobBoard in value)
                  JobBoardCard(
                    jobBoard: jobBoard,
                  ),
              ],
            ),
          ),
        ),
      AsyncError(:final error) => Text(error.toString()),
      _ => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
    };
  }
}

class JobBoardCard extends StatelessWidget {
  const JobBoardCard({
    required this.jobBoard,
    super.key,
  });

  final JobBoard jobBoard;

  @override
  Widget build(BuildContext context) {
    return Link(
      uri: jobBoard.uri,
      builder: (context, followLink) => DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
            strokeAlign: BorderSide.strokeAlignOutside,
          ),
        ),
        child: InkWell(
          onTap: followLink,
          child: Image.asset(
            jobBoard.imageUri.toString(),
            package: 'common_data',
            fit: BoxFit.contain,
            width: 340,
            height: 191,
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<JobBoard>('jobBoard', jobBoard));
  }
}
