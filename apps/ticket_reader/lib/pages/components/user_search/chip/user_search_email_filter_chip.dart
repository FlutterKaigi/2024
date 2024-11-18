import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';

class UserSearchEmailFilterChip extends StatelessWidget {
  const UserSearchEmailFilterChip({
    required this.emailContains,
    required this.onChanged,
    super.key,
  });

  final String? emailContains;
  final void Function(String?) onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return RawChip(
      label: Text(
        emailContains != null
            ? 'メール: '
                '$emailContains'
            : 'メールアドレス',
        style: GoogleFonts.jetBrainsMono(),
      ),
      selected: emailContains != null,
      onSelected: (_) async => _showFilterModal(context),
      labelStyle: emailContains != null
          ? TextStyle(
              color: theme.colorScheme.onSecondaryContainer,
              fontWeight: FontWeight.bold,
            )
          : null,
      backgroundColor: emailContains != null
          ? theme.colorScheme.secondaryContainer
          : theme.colorScheme.surface,
      selectedColor: theme.colorScheme.secondaryContainer,
    );
  }

  Future<void> _showFilterModal(BuildContext context) async {
    final result = await showModalBottomSheet<String?>(
      context: context,
      isScrollControlled: true,
      builder: (context) => _FilterModal(
        currentEmailContains: emailContains,
      ),
    );
    if (result != null) {
      onChanged(result.isEmpty ? null : result);
    }
  }
}

class _FilterModal extends HookWidget {
  const _FilterModal({
    required this.currentEmailContains,
  });

  final String? currentEmailContains;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final controller = useTextEditingController(text: currentEmailContains);

    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                width: 36,
                height: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: theme.colorScheme.onSurface,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'メールアドレスで絞り込み',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: 'メールアドレスを入力',
                  border: const OutlineInputBorder(),
                  suffixIcon: controller.text.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: controller.clear,
                        )
                      : null,
                ),
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('キャンセル'),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(controller.text),
                  child: const Text('完了'),
                ),
              ],
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
