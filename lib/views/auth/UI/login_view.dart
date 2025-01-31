import 'package:app/views/auth/UI/widgets/custom_text_form_field.dart';
import 'package:app/views/auth/UI/widgets/login_widget.dart';
import 'package:app/views/auth/UI/widgets/text_button.dart';
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
              color: Colors.white,
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
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Textbutton(
                          text: 'Forget Password?',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    LoginWidget(
                      text: 'Login',
                      onPressed: () {},
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
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t have an account?'),
                        Textbutton(
                          text: 'Sign up',
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


