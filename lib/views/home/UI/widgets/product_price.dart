import 'package:app/core/app_colors.dart';
import 'package:app/views/auth/UI/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          children: [
            Text(
              '120',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.kBlackColor,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '150',
              style: TextStyle(
                decoration: TextDecoration.lineThrough,
                fontSize: 16,
                color: AppColors.kGreyColor,
              ),
            ),
          ],
        ),
        CustomButton(
            onPressed: () {},
            child: const Text(
              'Buy Now',
              style: TextStyle(color: AppColors.kWhiteColor),
            ))
      ],
    );
  }
}
