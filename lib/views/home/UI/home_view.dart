import 'package:app/core/app_colors.dart';
import 'package:app/views/auth/UI/widgets/custom_text_form_field.dart';
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
          CustomTextFormFeild(
              suffixIcon: Container(
                decoration: BoxDecoration(
                    color: AppColors.kPrimaryColor,
                    borderRadius: BorderRadius.circular(8)),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                  color: AppColors.kWhiteColor,
                ),
              ),
              lableText: 'Search in market',
              controller: searchController,
              obscureText: false,
              keyboardType: TextInputType.text),
        ],
      ),
    );
  }
}
