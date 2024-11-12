import 'package:common_data/profile.dart';
import 'package:conference_2024_website/core/extension/size_ex.dart';
import 'package:flutter/material.dart';

class IndividualSponsorCard extends StatelessWidget {
  const IndividualSponsorCard({
    required this.sponsor,
    super.key,
  });

  final ProfileWithSns sponsor;

  static double width({required bool isMobile}) => isMobile ? 150 : 200;
  static double margin({required bool isMobile}) => isMobile ? 16 : 24;

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.sizeOf(context).isMobile;

    return SizedBox(
      width: width(isMobile: isMobile),
      child: Column(
        children: [
          CircleAvatar(
            radius: isMobile ? 50 : 75,
            backgroundImage: sponsor.googleAvatarUri != null
                ? NetworkImage(sponsor.googleAvatarUri!.toString())
                : null,
            child: sponsor.googleAvatarUri == null
                ? Text(
                    sponsor.name.characters.first,
                    style: TextStyle(
                      fontSize: isMobile ? 24 : 32,
                    ),
                  )
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
  }
}
