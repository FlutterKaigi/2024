import 'package:app_cores_designsystem/ui.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

/// タイムラインのアイテム
class SessionItem extends StatelessWidget {
  const SessionItem({
    required String title,
    required String name,
    super.key,
  })  : _title = title,
        _name = name;

  final String _title;
  final String _name;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
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
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQalMJeasBiucOyCl7CwofX0mtDRL77WPt6XA&s',
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
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      height: 28,
                      decoration: BoxDecoration(
                        color: const Color(0xff81d3dd),
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
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      height: 28,
                      decoration: BoxDecoration(
                        color: const Color(0xffB8C6EA),
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
    );
  }
}
