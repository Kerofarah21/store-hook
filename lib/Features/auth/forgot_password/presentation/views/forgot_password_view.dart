import 'package:flutter/material.dart';

import './widgets/forgot_password_view_body.dart';

class ForgortPasswordView extends StatelessWidget {
  const ForgortPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Forgot Password',
        ),
      ),
      body: const ForgotPasswordViewBody(),
    );
  }
}
