import 'package:app/core/app_colors.dart';
import 'package:app/views/auth/UI/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SearchFormField extends StatelessWidget {
  const SearchFormField({
    super.key,
    required this.searchController,
  });

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormFeild(
        suffixIcon: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.kPrimaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: const Icon(
            Icons.search,
            color: AppColors.kWhiteColor,
          ),
        ),
        lableText: 'Search in market',
        controller: searchController,
        obscureText: false,
        keyboardType: TextInputType.text);
  }
}
