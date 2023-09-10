import 'package:flutter/material.dart';

import '../../../../../size_config.dart';
import './sign_in_form.dart';
import './socials.dart';
import '../../../../../core/widgets/sign_up_now.dart';
import './welcome.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
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
              const Welcome(),
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
