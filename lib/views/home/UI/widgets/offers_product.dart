import 'package:app/core/app_colors.dart';
import 'package:app/core/components/cashed_loading_image.dart';
import 'package:flutter/material.dart';

class OffersProduct extends StatelessWidget {
  const OffersProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
          child: CashedLoadingWidget(
              imageUrl:
                  "https://img.freepik.com/free-psd/circle-discount-sale-podium_35913-2513.jpg?t=st=1738732832~exp=1738736432~hmac=c97147653932da8294749ff6181c671f46287b814908e81bdebd9608602f93d9&w=1060"),
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
