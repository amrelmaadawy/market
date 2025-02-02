import 'package:app/core/app_colors.dart';
import 'package:app/views/favorite/UI/favorite_view.dart';
import 'package:app/views/home/UI/home_view.dart';
import 'package:app/views/profile/UI/profile_view.dart';
import 'package:app/views/store/UI/store_view.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainHomeView extends StatelessWidget {
  MainHomeView({super.key});
  final List<Widget> views = [
    const HomeView(),
    const StoreView(),
    const FavoriteView(),
    const ProfileView()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: views[3]),
      bottomNavigationBar: Container(
        color: AppColors.kWhiteColor,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: GNav(
              
              rippleColor: AppColors.kPrimaryColor,
              hoverColor: AppColors.kPrimaryColor,
              tabBorderRadius: 20,
              duration: Duration(milliseconds: 900),
              gap: 8,
              color: Colors.grey,
              activeColor: AppColors.kWhiteColor,
              iconSize: 24,
              tabBackgroundColor: AppColors.kPrimaryColor,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.store,
                  text: 'Store',
                ),
                GButton(
                  icon: Icons.favorite,
                  text: 'Favorites',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                )
              ]),
        ),
      ),
    );
  }
}
