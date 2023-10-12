import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../core/utils/size_config.dart';

class SignUpNow extends StatelessWidget {
  const SignUpNow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account? ',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
          ),
        ),
        Text(
          'Sign Up',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
            color: kPrimaryColor,
          ),
        ),
      ],
    );
  }
}
