import 'package:flutter/material.dart';

import 'widgets/sign_in_success_view_body.dart';

class SignInSuccessView extends StatelessWidget {
  const SignInSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Login Success',
          ),
        ),
      ),
      body: const SignInSuccessViewBody(),
    );
  }
}
