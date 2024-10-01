import 'package:flutter/material.dart';

class TicketCard extends StatelessWidget {
  const TicketCard({
    required this.name,
    required this.description,
    required this.xUri,
    required this.avatarImageUri,
    required this.sponsorImageUri,
    required this.isSponsor,
    required this.isSpeaker,
    required this.isAdult,
    super.key,
  });

  final String name;
  final String description;
  final Uri? xUri;
  final Uri? avatarImageUri;
  final Uri? sponsorImageUri;
  final bool isSponsor;
  final bool isSpeaker;
  final bool isAdult;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('''
    name: $name
        description: $description
        xUri: $xUri
        avatarImageUri: $avatarImageUri
        sponsorImageUri: $sponsorImageUri
        isSponsor: $isSponsor
        isSpeaker: $isSpeaker
        isAdult: $isAdult
        '''),
        if (avatarImageUri != null) Image.network(avatarImageUri.toString()),
      ],
    );
  }
}
