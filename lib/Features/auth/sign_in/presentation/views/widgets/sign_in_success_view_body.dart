import 'package:flutter/material.dart';

import '../../../../../../core/widgets/default_button.dart';
import '../../../../../../core/utils/size_config.dart';

class SignInSuccessViewBody extends StatelessWidget {
  const SignInSuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight! * 0.04,
        ),
        Image.asset(
          'assets/images/success.png',
          height: SizeConfig.screenHeight! * 0.4,
        ),
        SizedBox(
          height: SizeConfig.screenHeight! * 0.08,
        ),
        Text(
          'Login Success',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenWidth(30),
          ),
        ),
        const Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth! * 0.6,
          child: DefaultButton(
            text: 'Go to home',
            onPressed: () {},
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
