
import 'package:app/core/app_colors.dart';
import 'package:flutter/material.dart';

class Textbutton extends StatelessWidget {
  const Textbutton({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.kPrimaryColor),
      ),
    );
  }
}
