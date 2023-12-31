import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFF7643);

const kPrimaryGradientColor = LinearGradient(
  colors: [
    Color(0xFFFFA53E),
    Color(0xFFFF7643),
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

const kSecondryColor = Color(0xFF979797);
const kTextColor1 = Color(0xFF757575);
const kTextColor2 = Color(0XFF8B8B8B);

const kAnimationDuration = Duration(milliseconds: 200);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = 'Please Enter Your Email';
const String kEmailInvalidError = 'Please Enter Valid Email';
const String kPasswordNullError = 'Please Enter Your Password';
const String kPasswordShortError = 'Password is too short';
const String kPasswordMatchError = 'Password don\'t match';
