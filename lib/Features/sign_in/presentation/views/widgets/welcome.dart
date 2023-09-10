import 'package:flutter/material.dart';

import '../../../../../size_config.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Welcome Back',
          style: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(28),
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          'Sign in with your email and password\nor continue with social media',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
