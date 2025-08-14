import 'package:ecommerceapp/core/configs/theme/app_theme.dart';
import 'package:ecommerceapp/presentation/splash/pages/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner:false ,theme: appTheme, home: const SplashPage());
  }
}
