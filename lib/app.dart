import 'package:commerce/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:commerce/utils/theme/theme.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: SAppTheme.lightTheme, //light theme by default
      darkTheme: SAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}