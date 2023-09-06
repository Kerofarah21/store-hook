import 'package:flutter/material.dart';
import 'package:store_hook/Features/onBoarding/presentation/views/on_boarding_view.dart';
import 'package:store_hook/core/utils/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StoreHook',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: const OnBoardingView(),
    );
  }
}
