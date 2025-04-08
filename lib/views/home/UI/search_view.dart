import 'package:app/core/components/list_of_products.dart';
import 'package:app/core/functions/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:customAppBar(context,'Search Results'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          ListOfProducts()
        ],),
      ),
    );
  }
}