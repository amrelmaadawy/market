import 'package:app/core/app_colors.dart';
import 'package:app/views/auth/UI/login_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:  ThemeData(
        scaffoldBackgroundColor: AppColors.kScaffoldColor,
        useMaterial3: true,
      ),
      home: const LoginView(),
    );
  }
}
