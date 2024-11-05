import 'package:common_data/speaker.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    required this.profile,
    super.key,
    this.size = 24,
  });

  final Speaker profile;
  final double size;

  @override
  Widget build(BuildContext context) {
    final errorAvatar = DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.7),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Icon(
          Icons.person,
          color: Colors.white,
          size: size - 8,
        ),
      ),
    );

    return ClipOval(
      child: Image.network(
        profile.avatarUri.toString(),
        fit: BoxFit.cover,
        width: size,
        height: size,
        errorBuilder: (context, error, stackTrace) => errorAvatar,
      ),
    );
  }
}
