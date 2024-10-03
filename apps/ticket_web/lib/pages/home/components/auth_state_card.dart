import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/feature/auth/data/auth_notifier.dart';
import 'package:ticket_web/pages/home/components/login_before_purchase_card.dart';

class AuthStateCard extends ConsumerWidget {
  const AuthStateCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authNotifierProvider);

    final Widget child;
    if (authState == null) {
      child = LoginBeforePurchaseCard(
        key: const ValueKey('LoginBeforePurchaseCard'),
        onSignInPressed:
            ref.watch(authNotifierProvider.notifier).signInWithGoogle,
      );
    } else {
      child = const SizedBox.shrink();
    }

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      layoutBuilder: (currentChild, previousChild) => Stack(
        alignment: Alignment.topCenter,
        children: [
          ...previousChild,
          if (currentChild != null) currentChild,
        ],
      ),
      child: child,
    );
  }
}
