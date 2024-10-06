import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:ticket_web/core/gen/assets.gen.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';
import 'package:url_launcher/url_launcher_string.dart';

class PrePurchaseWarningDialog extends HookWidget {
  const PrePurchaseWarningDialog({super.key});

  static Future<bool?> show(BuildContext context) async {
    return showDialog<bool>(
      context: context,
      builder: (context) => const PrePurchaseWarningDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    // ignore: discarded_futures
    final markdownFuture = useMemoized(
      () async => rootBundle.loadString(Assets.docs.prePurchaseWarning),
    );
    final markdown = useFuture(markdownFuture);

    final i18n = Translations.of(context);

    final data = markdown.data;

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      clipBehavior: Clip.antiAlias,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            i18n.homePage.prePurchaseWarningDialog.title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        body: data != null
            ? Markdown(
                data: data,
                softLineBreak: true,
                onTapLink: (text, href, title) {
                  if (href != null) {
                    unawaited(
                      launchUrlString(href),
                    );
                  }
                },
              )
            : const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
        bottomNavigationBar: BottomAppBar(
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.center,
            alignment: WrapAlignment.end,
            spacing: 4,
            children: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text(i18n.homePage.prePurchaseWarningDialog.unaccept),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: Text(i18n.homePage.prePurchaseWarningDialog.accept),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
