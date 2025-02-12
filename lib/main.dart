import 'package:app/core/app_colors.dart';
import 'package:app/views/auth/UI/login_view.dart';
import 'package:app/views/auth/logic/loginstate_cubit.dart';
import 'package:app/views/nav_bar/UI/main_home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://zieeiuozhhjeiseqclvd.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InppZWVpdW96aGhqZWlzZXFjbHZkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mzg3NzAzMjgsImV4cCI6MjA1NDM0NjMyOH0.qUj1vsfmjIVbXDbFXD3SVJavx5RzHE1dSwFKAAEulDE',
    authOptions: const FlutterAuthClientOptions(
      autoRefreshToken: true,
      detectSessionInUri: true,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SupabaseClient client = Supabase.instance.client;
    return BlocProvider(
      create: (context) => LoginstateCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.kScaffoldColor,
          useMaterial3: true,
        ),
        home: client.auth.currentUser != null
            ? MainHomeView()
            : const LoginView(),
      ),
    );
  }
}
