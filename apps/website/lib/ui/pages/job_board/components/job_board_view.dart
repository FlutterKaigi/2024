import 'package:common_data/job_board.dart';
import 'package:conference_2024_website/feature/job_board/data/job_board_notifier.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class JobBoardView extends ConsumerWidget {
  const JobBoardView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(jobBoardProvider);

    return switch (state) {
      AsyncData(:final value) => DecoratedBox(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Wrap(
            children: [
              for (final jobBoard in value)
                JobBoardCard(
                  jobBoard: jobBoard,
                ),
            ],
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
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Ink.image(
        image: NetworkImage(jobBoard.imageUri.toString()),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<JobBoard>('jobBoard', jobBoard));
  }
}
