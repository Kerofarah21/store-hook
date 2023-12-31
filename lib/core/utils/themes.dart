import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/constants.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    titleTextStyle: TextStyle(
      color: kTextColor2,
      fontSize: 18,
    ),
    color: Colors.white,
    elevation: 0.0,
  ),
  scaffoldBackgroundColor: Colors.white,
  fontFamily: 'Muli',
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: kTextColor1),
    bodyMedium: TextStyle(color: kTextColor1),
  ),
);
