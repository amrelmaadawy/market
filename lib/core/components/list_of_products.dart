
import 'package:app/core/components/product_card.dart';
import 'package:flutter/material.dart';

class ListOfProducts extends StatelessWidget {
  const ListOfProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
      return const ProductCard();
    });
  }
}
