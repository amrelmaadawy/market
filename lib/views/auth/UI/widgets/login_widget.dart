import 'package:app/core/app_colors.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              backgroundColor: AppColors.kPrimaryColor,
              padding: const EdgeInsets.all(10)),
          child: const Icon(
            Icons.arrow_forward,
            color: AppColors.kWhiteColor,
          ),
        )
      ],
    );
  }
}
