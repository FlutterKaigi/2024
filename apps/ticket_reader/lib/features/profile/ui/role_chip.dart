import 'package:common_data/profile.dart';
import 'package:flutter/material.dart';

class RoleChip extends StatelessWidget {
  const RoleChip({
    required this.role,
    super.key,
  });

  final Role role;

  @override
  Widget build(BuildContext context) {
    final color = switch (role) {
      Role.admin => Colors.red,
      Role.user => Colors.blue,
      Role.sponsor => Colors.green,
      Role.speaker => Colors.purple,
    };

    return Chip(
      label: Text(role.name),
      backgroundColor: color,
    );
  }
}
