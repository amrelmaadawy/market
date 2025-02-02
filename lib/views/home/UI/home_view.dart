import 'package:app/views/home/UI/widgets/search_form_feild.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          SearchFormField(searchController: searchController),
          const SizedBox(height: 16),
          Image.asset('assets/images/buy.jpg'),
        ],
      ),
    );
  }
}
