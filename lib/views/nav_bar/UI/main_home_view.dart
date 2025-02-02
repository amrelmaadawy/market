import 'package:app/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainHomeView extends StatelessWidget {
  const MainHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container()),
      bottomNavigationBar:  Container(
        color: AppColors.kWhiteColor,
        child: const Padding(
          padding:  EdgeInsets.all(8.0),
          child:  GNav(
              tabBorderRadius: 20,
              duration:
                  Duration(milliseconds: 900), // tab animation duration
              gap: 8, // the tab button gap between icon and text
              color: Colors.grey, // unselected icon color
              activeColor: AppColors.kWhiteColor, // selected icon and text color
              iconSize: 24, // tab button icon size
              tabBackgroundColor:
                  AppColors.kPrimaryColor, // selected tab background color
              padding: EdgeInsets.symmetric(
                  horizontal: 10, vertical: 10), // navigation bar padding
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
