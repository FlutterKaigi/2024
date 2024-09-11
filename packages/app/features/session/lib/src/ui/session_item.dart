import 'package:app_cores_designsystem/ui.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

/// タイムラインのアイテム
class SessionItem extends StatelessWidget {
  const SessionItem({
    required String title,
    required String name,
    required bool isDateVisible,
    super.key,
  })  : _title = title,
        _name = name,
        _isDateVisible = isDateVisible;

  final String _title;
  final String _name;
  final bool _isDateVisible;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Row(
            children: [
              if (_isDateVisible)
                Text(
                  '11:00',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              const Spacer(),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 16,
            ),
            padding: const EdgeInsets.only(
              left: 16,
              bottom: 4,
            ),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  width: 2,
                  color: Theme.of(context).colorScheme.outlineVariant,
                ),
              ),
            ),
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(
                  color: theme.colorScheme.outline,
                ),
              ),
              clipBehavior: Clip.antiAlias,
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                title: Text(
                  _title,
                  style: theme.textTheme.titleMedium,
                ),
                subtitle: Column(
                  children: [
                    const Gap(8),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            height: 40,
                            width: 40,
                            'https://flutterkaigi.jp/2023/assets/assets/flutterkaigi_logo_shadowed.svg',
                            errorBuilder: (context, error, stackTrace) {
                              return const MainLogo();
                            },
                          ),
                        ),
                        const Gap(8),
                        Text(
                          _name,
                          style: theme.textTheme.labelMedium,
                        ),
                      ],
                    ),
                    const Gap(8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              height: 28,
                              decoration: BoxDecoration(
                                color: theme.colorScheme.primaryFixedDim,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Center(
                                child: Text(
                                  'DevOps',
                                  style: theme.textTheme.labelSmall,
                                ),
                              ),
                            ),
                            const Gap(8),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              height: 28,
                              decoration: BoxDecoration(
                                color: theme.colorScheme.tertiaryFixedDim,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Center(
                                child: Text(
                                  'Room1',
                                  style: theme.textTheme.labelSmall,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.bookmark_outline,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
