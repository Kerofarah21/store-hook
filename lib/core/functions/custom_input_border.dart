import 'package:flutter/material.dart';

OutlineInputBorder customInputBorder(Color borderColor) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(
      color: borderColor,
    ),
    gapPadding: 10,
  );
}
