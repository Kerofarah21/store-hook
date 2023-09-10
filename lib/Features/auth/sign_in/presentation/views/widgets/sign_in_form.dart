import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/widgets/default_button.dart';
import '../../../../widgets/email_form_field_builder.dart';
import '../../../../widgets/password_form_field_builder.dart';
import '../../../../../../size_config.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();

  bool? remember = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          EmailFormFieldBuilder(
            formKey: _formKey,
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          PasswordFormFieldBuilder(
            formKey: _formKey,
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              const Text(
                'Remember me',
              ),
              const Spacer(),
              GestureDetector(
                onTap: () =>
                    GoRouter.of(context).push(AppRouter.kForgotPassword),
                child: const Text(
                  'Forgot Password',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          DefaultButton(
            text: 'Sign In',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              }
            },
          ),
        ],
      ),
    );
  }
}
