import 'package:app_cores_designsystem/ui.dart';
import 'package:app_cores_settings/ui.dart';
import 'package:app_features_session/l10n.dart';
import 'package:app_features_session/src/data/model/session_date.dart';
import 'package:app_features_session/src/data/providers/session_timeline.dart';
import 'package:app_features_session/src/routing/router.dart';
import 'package:app_features_session/src/ui/timeline_item_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SessionsPage extends HookConsumerWidget {
  const SessionsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showingDate = useState(SessionDate.day1);

    final day1ScrollController = useScrollController();
    final day2ScrollController = useScrollController();
    final scrollController =
        showingDate.value.isDay1 ? day1ScrollController : day2ScrollController;

    final pageStorageKey =
        PageStorageKey(showingDate.value.isDay1 ? 'day1' : 'day2');

    final sessions = ref.watch(sessionTimelineProvider);

    return _BaseSessionWidget(
      scrollController: scrollController,
      pageStorageKey: pageStorageKey,
      current: showingDate,
      sliver: sessions.when(
        data: (data) {
          final sessions = data.where(
            (e) => SessionDate.fromDateTime(e.startsAt) == showingDate.value,
          );
          return SliverList.builder(
            itemCount: sessions.length,
            itemBuilder: (context, index) {
              final item = sessions.elementAt(index);
              final isDateVisible = index == 0 ||
                  item.startsAt != sessions.elementAt(index - 1).startsAt;
              return TimelineItemView(
                item: item,
                isDateVisible: isDateVisible,
                onTap: item.map(
                  event: (_) => null,
                  session: (session) => () async =>
                      SessionPageRoute(sessionId: session.id).push(context),
                ),
              );
            },
          );
        },
        loading: () => const SliverFillRemaining(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
        error: (error, _) => SliverFillRemaining(
          child: Center(
            child: Text(error.toString()),
          ),
        ),
      ),
    );
  }
}

class _BaseSessionWidget extends StatelessWidget {
  const _BaseSessionWidget({
    required this.current,
    required this.scrollController,
    required this.pageStorageKey,
    required this.sliver,
  });

  final ValueNotifier<SessionDate> current;
  final ScrollController scrollController;
  final PageStorageKey<String> pageStorageKey;
  final Widget sliver;

  @override
  Widget build(BuildContext context) {
    final l = L10nSession.of(context);
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            key: pageStorageKey,
            controller: scrollController,
            slivers: [
              SliverAppBar.large(
                leading: const Center(
                  child: MainLogo(),
                ),
                title: Text(l.sessionPageTitle),
                actions: [
                  IconButton(
                    tooltip: l.bookmarked,
                    onPressed: () async =>
                        const BookmarkedSessionsPageRoute().push(context),
                    icon: const Icon(Icons.bookmarks_outlined),
                  ),
                  const SettingsButton(),
                ],
              ),
              sliver,
            ],
          ),
          _FloatingSwitcher(
            current: current,
            scrollController: scrollController,
          ),
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
        DiagnosticsProperty<ScrollController>(
          'scrollController',
          scrollController,
        ),
      )
      ..add(
        DiagnosticsProperty<PageStorageKey<String>>(
          'pageStorageKey',
          pageStorageKey,
        ),
      )
      ..add(
        DiagnosticsProperty<ValueNotifier<SessionDate>>('current', current),
      )
      ..add(DiagnosticsProperty<Widget>('sliver', sliver));
  }
}

class _FloatingSwitcher extends HookWidget {
  const _FloatingSwitcher({
    required this.current,
    required this.scrollController,
  });

  final ValueNotifier<SessionDate> current;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isShowing = useState(true);

    useEffect(
      () {
        void listener() {
          if (scrollController.position.userScrollDirection ==
              ScrollDirection.reverse) {
            isShowing.value = false;
          } else if (scrollController.position.userScrollDirection ==
              ScrollDirection.forward) {
            isShowing.value = true;
          }
        }

        scrollController.addListener(listener);
        return () => scrollController.removeListener(listener);
      },
      [current.value],
    );

    return AnimatedPositioned(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
      bottom: isShowing.value ? 16 : -80,
      left: 0,
      right: 0,
      child: Center(
        child: Material(
          elevation: 2,
          borderRadius: BorderRadius.circular(20),
          color: theme.colorScheme.tertiary,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () => current.value = SessionDate.day1,
                  child: _SwitcherButton(
                    current: current.value,
                    value: SessionDate.day1,
                  ),
                ),
                const Gap(16),
                GestureDetector(
                  onTap: () => current.value = SessionDate.day2,
                  child: _SwitcherButton(
                    current: current.value,
                    value: SessionDate.day2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
      DiagnosticsProperty<ScrollController>(
        'scrollController',
        scrollController,
      ),
    );
    properties.add(
      DiagnosticsProperty<ValueNotifier<SessionDate>>('current', current),
    );
  }
}

class _SwitcherButton extends StatelessWidget {
  const _SwitcherButton({
    required this.current,
    required this.value,
  });

  final SessionDate current;
  final SessionDate value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final label = switch (value) {
      SessionDate.day1 => 'Day 1',
      SessionDate.day2 => 'Day 2',
    };

    return Container(
      decoration: ShapeDecoration(
        color: current == value ? theme.colorScheme.tertiaryContainer : null,
        shape: const StadiumBorder(),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16,
      ),
      child: Text(
        label,
        style: theme.textTheme.titleMedium?.copyWith(
          color: current == value
              ? theme.colorScheme.onTertiaryContainer
              : theme.colorScheme.onTertiary,
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<SessionDate>('current', current));
    properties.add(EnumProperty<SessionDate>('value', value));
  }
}
