import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:common_data/profile.dart';
import 'package:conference_2024_website/core/extension/size_ex.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/link.dart';

part 'individual_sponsor_card.g.dart';

@Riverpod(keepAlive: true)
Future<Uint8List?> userAvatarImage(Ref ref, ProfileWithSns sponsor) async {
  final fetch = sponsor.userAvatarFetch;
  if (fetch == null) {
    return null;
  }
  final result = await fetch.call();
  return result;
}

class IndividualSponsorCard extends ConsumerWidget {
  const IndividualSponsorCard({
    required this.sponsor,
    super.key,
  });

  final ProfileWithSns sponsor;

  static double width({required bool isMobile}) => isMobile ? 150 : 200;
  static double margin({required bool isMobile}) => isMobile ? 16 : 24;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isMobile = MediaQuery.sizeOf(context).isMobile;

    final userAvatarImage = ref.watch(userAvatarImageProvider(sponsor));
    final imageData = userAvatarImage.valueOrNull;

    final image = SizedBox(
      width: width(isMobile: isMobile),
      child: Column(
        children: [
          CircleAvatar(
            radius: isMobile ? 50 : 75,
            backgroundImage: sponsor.userAvatarFetch != null
                ? imageData != null
                    ? Image.memory(imageData).image
                    : null
                : sponsor.googleAvatarUri != null
                    ? NetworkImage(sponsor.googleAvatarUri!.toString())
                    : null,
          ),
          const SizedBox(height: 8),
          Text(
            sponsor.name,
            style: TextStyle(
              fontSize: isMobile ? 14 : 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );

    final sns =
        sponsor.snsAccounts.firstWhereOrNull((sns) => sns.type == SnsType.x);
    if (sns == null) {
      return image;
    }
    return Link(
      uri: sns.uri,
      builder: (context, followLink) => InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: followLink,
        child: image,
      ),
    );
  }
}
