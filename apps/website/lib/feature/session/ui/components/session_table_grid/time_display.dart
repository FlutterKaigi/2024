import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeDisplay extends StatelessWidget {
  const TimeDisplay({
    required this.startTime,
    super.key,
  });

  final DateTime startTime;

  @override
  Widget build(BuildContext context) {
    final timeFormatter = DateFormat('HH:mm');
    return SizedBox(
      width: 80,
      child: Text(
        timeFormatter.format(startTime.toLocal()),
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
