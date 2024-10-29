import 'package:flutter/material.dart';

class TimeDisplay extends StatelessWidget {
  const TimeDisplay({
    required this.startTime,
    super.key,
  });

  final DateTime startTime;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Text(
        _formatTime(startTime),
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }

  String _formatTime(DateTime time) {
    final localTime = time.toLocal();
    return '${localTime.hour.toString().padLeft(2, '0')}'
        ':'
        '${localTime.minute.toString().padLeft(2, '0')}';
  }
}
