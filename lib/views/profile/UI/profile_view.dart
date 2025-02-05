import 'package:app/core/app_colors.dart';
import 'package:app/views/profile/UI/widgets/custom_profile_button.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          child: Card(
            color: AppColors.kWhiteColor,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))),
            margin: const EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundColor: AppColors.kPrimaryColor,
                    child: Icon(
                      Icons.person,
                      color: AppColors.kWhiteColor,
                      size: 50,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Amr Elmaadawy',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'amrelmaadawy@gmail.com',
                    style: TextStyle(fontSize: 15),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomProfileButton(
                    onPressed: () {},
                    icon: Icons.person,
                    text: 'Edit Name',
                  ),
                  CustomProfileButton(
                    onPressed: () {},
                    icon: Icons.badge,
                    text: 'My Orders',
                  ),
                  CustomProfileButton(
                    onPressed: () {},
                    icon: Icons.logout,
                    text: 'Log Out',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
