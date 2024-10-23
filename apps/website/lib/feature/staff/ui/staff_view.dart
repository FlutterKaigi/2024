import 'package:collection/collection.dart';
import 'package:common_data/staff.dart';
import 'package:conference_2024_website/core/extension/iterable_ex.dart';
import 'package:conference_2024_website/feature/staff/ui/components/staff_card.dart';
import 'package:conference_2024_website/gen/i18n/strings.g.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StaffView extends ConsumerWidget {
  const StaffView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(staffMembersProvider);

    final i18n = Translations.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;

    return switch (state) {
      AsyncData(:final value) when value.isNotEmpty => Column(
          children: [
            const Row(),
            Text(
              i18n.staff.title,
              style: textTheme.availableFonts.poppins.regular.copyWith(
                fontSize: 48,
              ),
            ),
            const Gap(40),
            _StaffCards(staffs: value),
          ],
        ),
      _ => const SizedBox.shrink(),
    };
  }
}

class _StaffCards extends StatelessWidget {
  const _StaffCards({
    required this.staffs,
  });

  final List<Staff> staffs;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        final cardInRowCount = _calculateCardInRowCount(constrains);

        return Column(
          children: <Widget>[
            for (final staffsInRow in staffs.slices(cardInRowCount))
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: staffsInRow
                      .map<Widget>(
                        (staff) => StaffCard(staff: staff),
                      )
                      .intersperse(
                        SizedBox(width: StaffCard.margin),
                      )
                      .toList(),
                ),
              ),
          ]
              .intersperse(
                Gap(StaffCard.margin),
              )
              .toList(),
        );
      },
    );
  }

  /// スタッフカードが横に何枚入るかを計算する
  int _calculateCardInRowCount(BoxConstraints constraints) {
    final maxWidth = constraints.maxWidth;
    // yをスタッフカード群が占める横幅[px], xをスタッフカードの枚数とすると
    // y = StaffCard.width * x + StaffCard.margin * (x - 1)
    // <=> y = (StaffCard.width + StaffCard.margin) * x - StaffCard.margin
    // <=> x = (y + StaffCard.margin) / (StaffCard.width + StaffCard.margin)
    // であるから
    // [constraints]のmaxWidthから 最大の[x](小数点以下切り捨て)を求める
    final x =
        (maxWidth - StaffCard.margin) / (StaffCard.width + StaffCard.margin);
    return x.truncate();
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<Staff>('staffs', staffs));
  }
}
