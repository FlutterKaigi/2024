import 'package:flutter/material.dart';

/// スタッフ情報のアイテム
class StaffCardWidget extends StatelessWidget {
  const StaffCardWidget({
    required String name,
    required String imageUrl,
    super.key,
  })  : _name = name,
        _imageUrl = imageUrl;
  final String _name;
  final String _imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: Row(
        children: [
          SizedBox(
            height: 56,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(_imageUrl),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Text(
            _name,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
