import 'package:app/core/app_colors.dart';
import 'package:app/views/auth/UI/widgets/custom_button.dart';
import 'package:app/views/auth/UI/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Enter your email to reset your password',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
              margin: const EdgeInsets.all(16),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              color: AppColors.kWhiteColor,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    CustomTextFormFeild(
                        lableText: 'Email',
                        controller: emailController,
                        obscureText: false,
                        keyboardType: TextInputType.emailAddress),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                        onPressed: () {}, child: const Text('Reset Password',style: TextStyle(color: AppColors.kWhiteColor),)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
