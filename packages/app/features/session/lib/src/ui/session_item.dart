import 'package:app_cores_designsystem/ui.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

/// タイムラインのアイテム
class SessionItem extends StatelessWidget {
  const SessionItem({
    required String title,
    required String name,
    required bool isDateVisible,
    required VoidCallback? onTap,
    super.key,
  })  : _title = title,
        _name = name,
        _isDateVisible = isDateVisible,
        _onTap = onTap;

  final String _title;
  final String _name;
  final bool _isDateVisible;
  final VoidCallback? _onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 16,
        left: 8,
        top: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (_isDateVisible)
            Text(
              '11:00',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          Container(
            margin: const EdgeInsets.only(
              left: 16,
            ),
            padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
            ),
            child: _SessionCard(
              title: _title,
              name: _name,
              onTap: _onTap,
            ),
          ),
        ],
      ),
    );
  }
}

class _SessionCard extends StatelessWidget {
  const _SessionCard({
    required String title,
    required String name,
    required VoidCallback? onTap,
  })  : _title = title,
        _name = name,
        _onTap = onTap;

  final String _title;
  final String _name;
  final VoidCallback? _onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      elevation: 0,
      color: theme.colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: theme.colorScheme.outline,
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          ListTile(
            onTap: _onTap,
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
                    DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: theme.colorScheme.secondary,
                        ),
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: const NetworkImage(
                            'https://via.placeholder.com/40',
                          ),
                          onError: (exception, stackTrace) =>
                              const MainLogo(size: 40),
                        ),
                      ),
                      child: const SizedBox(height: 40, width: 40),
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
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
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
                      padding: const EdgeInsets.symmetric(horizontal: 12),
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
              ],
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: IconButton(
              padding: const EdgeInsets.all(12),
              icon: const Icon(
                Icons.bookmark_outline,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
