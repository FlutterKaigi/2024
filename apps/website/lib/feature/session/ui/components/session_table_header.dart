import 'package:common_data/session.dart';
import 'package:flutter/material.dart';

class SessionTableHeader extends StatelessWidget {
  const SessionTableHeader({
    required this.sessionVenues,
    super.key,
  });

  final List<SessionVenuesWithSessionsV2> sessionVenues;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: sessionVenues.map((venue) {
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Text(
                    venue.name,
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
