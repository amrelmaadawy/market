import 'package:app/core/app_colors.dart';
import 'package:app/core/components/list_of_products.dart';
import 'package:app/views/home/UI/search_view.dart';
import 'package:app/views/home/UI/widgets/categories_list.dart';

import 'package:app/views/home/UI/widgets/search_form_feild.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController mainSearchController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          SearchFormField(
            searchController: mainSearchController,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SearchView()));
            },
          ),
          const SizedBox(height: 16),
          Image.asset('assets/images/buy.jpg'),
          const SizedBox(height: 16),
          const Text(
            'Popular Categories',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.kBlackColor,
            ),
          ),
          const SizedBox(height: 16),
          const CategoriesList(),
          const SizedBox(
            height: 16,
          ),
          const Text('Recntly products',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.kBlackColor,
              )),
          const SizedBox(
            height: 16,
          ),
          const ListOfProducts()
        ],
      ),
    );
  }
}
