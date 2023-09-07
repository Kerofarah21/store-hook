import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
    color: Colors.white,
    elevation: 0.0,
  ),
  scaffoldBackgroundColor: Colors.white,
  fontFamily: 'Muli',
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: kTextColor),
    bodyMedium: TextStyle(color: kTextColor),
  ),
);
