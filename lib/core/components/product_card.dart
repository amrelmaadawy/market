import 'package:app/views/home/UI/widgets/offers_product.dart';
import 'package:app/views/home/UI/widgets/product_name.dart';
import 'package:app/views/home/UI/widgets/product_price.dart';
import 'package:app/views/productDetails/product_details.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ProductDetails()));
      },
      child: const Column(
        children: [
          OffersProduct(),
          SizedBox(
            height: 16,
          ),
          ProductName(),
          ProductPrice(),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
