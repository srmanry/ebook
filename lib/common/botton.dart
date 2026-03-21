import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  final String name;
  final Color bottomColor;
  final VoidCallback? onTap;

  const CustomBottom({
    super.key,
    required this.name,
    required this.bottomColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: onTap ?? () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: bottomColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(name),
      ),
    );
  }
}
