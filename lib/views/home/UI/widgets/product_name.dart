import 'package:flutter/material.dart';

class ProductName extends StatelessWidget {
  const ProductName({
    super.key,
    required this.productName,
    required this.onPressed,  
    required this.color,
  });
  final String productName;
  final void Function() onPressed;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          productName,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        IconButton(
            onPressed: onPressed,
            icon: Icon(
              Icons.favorite,
              color: color,
            )),
      ],
    );
  }
}
