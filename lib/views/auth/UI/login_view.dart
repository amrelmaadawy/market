import 'package:app/core/app_colors.dart';
import 'package:app/views/auth/UI/forget_password.dart';
import 'package:app/views/auth/UI/sign_up.dart';
import 'package:app/views/auth/UI/widgets/custom_text_form_field.dart';
import 'package:app/views/auth/UI/widgets/login_widget.dart';
import 'package:app/views/auth/UI/widgets/text_button.dart';
import 'package:app/views/nav_bar/UI/main_home_view.dart';
import 'package:flutter/material.dart';
class LoginView extends StatelessWidget {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Center(
                child: Text(
              'welcome to our market',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )),
            const SizedBox(
              height: 50,
            ),
            Card(
              margin: const EdgeInsets.all(16),
              color:AppColors.kWhiteColor,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
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
                    CustomTextFormFeild(
                        lableText: 'Password',
                        controller: passwordController,
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.visibility))),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Textbutton(
                            text: 'Forget Password?',
                            ontap: () => Navigator.push(
                                  (context),
                                  MaterialPageRoute(builder: (context) {
                                    return const ForgetPassword();
                                  }),
                                ),
                                
                                
                                ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    LoginWidget(
                      text: 'Login',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return MainHomeView();
                          }),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    LoginWidget(
                      text: 'Login With Google',
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Don\'t have an account? '),
                        Textbutton(
                          text: 'Sign up',
                          ontap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return const SignUp();
                              }),
                            );
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}