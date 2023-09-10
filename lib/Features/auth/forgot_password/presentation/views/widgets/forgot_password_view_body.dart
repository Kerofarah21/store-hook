import 'package:flutter/material.dart';

import '../../../../../../size_config.dart';
import '../../../../widgets/sign_up_now.dart';
import '../../../../widgets/text_block.dart';
import '../widgets/forgot_password_form.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(
              20,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight! * 0.04,
              ),
              const TextBlock(
                firstText: 'Forgot Password',
                secondText:
                    'Please enter your email and we will send\nyou a link to return to your account',
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.2,
              ),
              ForgotPasswordForm(),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.1,
              ),
              const SignUpNow(),
            ],
          ),
        ),
      ),
    );
  }
}
