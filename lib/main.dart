import 'package:flutter/material.dart';
import 'package:widgets_app/config/presentation/screens/home/home_screen.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectColor: 4).getTheme(),
        home: const HomeScreen());
  }
}
