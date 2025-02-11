// ignore_for_file: use_build_context_synchronously

import 'package:app/core/app_colors.dart';
import 'package:app/core/functions/snake_bar.dart';
import 'package:app/views/auth/UI/forget_password.dart';
import 'package:app/views/auth/UI/sign_up.dart';
import 'package:app/core/components/custom_text_form_field.dart';
import 'package:app/views/auth/UI/widgets/login_widget.dart';
import 'package:app/views/auth/UI/widgets/text_button.dart';
import 'package:app/views/auth/logic/loginstate_cubit.dart';
import 'package:app/views/home/UI/home_view.dart';
import 'package:app/views/nav_bar/UI/main_home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginstateCubit, LoginstateState>(
      listener: (context, state) {
        if (state is SignUpstateSuccesses) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return const HomeView();
          }));
        } else if (state is LoginstateErorr) {
          snakeBar(context, state.message, Colors.red);
        }
      },
      builder: (context, state) {
        LoginstateCubit cubit = context.read<LoginstateCubit>();
        return Scaffold(
          body: state is LoginstateLoading
              ? const CircularProgressIndicator()
              : Form(
                  key: _formKey,
                  child: SafeArea(
                      child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        const Center(
                            child: Text(
                          'welcome to our market',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )),
                        const SizedBox(
                          height: 50,
                        ),
                        Card(
                          margin: const EdgeInsets.all(16),
                          color: AppColors.kWhiteColor,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                CustomTextFormFeild(
                                  lableText: 'Email',
                                  controller: emailController,
                                  obscureText: false,
                                  keyboardType: TextInputType.emailAddress,
                                ),
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
                                    if (_formKey.currentState!.validate()) {
                                      cubit
                                          .login(
                                        email: emailController.text,
                                        password: passwordController.text,
                                      )
                                          .then((value) {
                                        snakeBar(context, 'login successful',
                                            Colors.green);
                                      });
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) {
                                          return MainHomeView();
                                        }),
                                      );
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                              'Please enter valid email and password'),
                                          backgroundColor: Colors.red,
                                        ),
                                      );
                                    }
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
                ),
        );
      },
    );
  }

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
  }
}
