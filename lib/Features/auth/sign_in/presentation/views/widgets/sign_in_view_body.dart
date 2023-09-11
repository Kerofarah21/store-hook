import 'package:flutter/material.dart';

import '../../../../../../size_config.dart';
import './sign_in_form.dart';
import './socials.dart';
import '../../../../widgets/sign_up_now.dart';
import '../../../../widgets/text_block.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight! * 0.04,
              ),
              const TextBlock(
                firstText: 'Welcome Back',
                secondText:
                    'Sign in with your email and password\nor continue with social media',
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.08,
              ),
              const SignInForm(),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.08,
              ),
              const Socials(),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              const SignUpNow(),
            ],
          ),
        ),
      ),
    );
  }
}
