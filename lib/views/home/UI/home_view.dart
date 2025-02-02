import 'package:app/core/app_colors.dart';
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
          SizedBox(
            height: 100,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(width: 20),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: AppColors.kPrimaryColor,
                        foregroundColor: AppColors.kWhiteColor,
                        child: Icon(categorie[index].icon,size: 38,),
                      ),
                    ),
                    Text(categorie[index].name),
                  ],
                );
              },
              itemCount: categorie.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
            ),
          ),
        ],
      ),
    );
  }
}

List<Categories> categorie = [
  Categories(name: 'Sports', icon: Icons.sports),
  Categories(name: 'Electronics', icon: Icons.tv),
  Categories(name: 'Collections', icon: Icons.collections),
  Categories(name: 'Books', icon: Icons.book),
  Categories(name: 'Games', icon: Icons.games),
  Categories(name: 'Bikes', icon: Icons.bike_scooter),
];

class Categories {
  final String name;
  final IconData icon;
  Categories({required this.name, required this.icon});
}
