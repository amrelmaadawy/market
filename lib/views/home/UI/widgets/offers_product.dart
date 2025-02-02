

import 'package:app/core/app_colors.dart';
import 'package:flutter/material.dart';

class Offers_product extends StatelessWidget {
  const Offers_product({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
          child: Image.network(
            'https://img.freepik.com/free-psd/circle-discount-sale-podium_35913-2513.jpg?t=st=1738522193~exp=1738525793~hmac=fc9a9d4a1a7aeaf58e964f89c88b8b9c7111a8253e4a54e02fa4fd38b4b6dacf&w=1060',
          ),
        ),
        Positioned(
          child: Container(
            decoration: const BoxDecoration(
              color: AppColors.kPrimaryColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '50 % OFF',
                style: TextStyle(
                  color: AppColors.kWhiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
