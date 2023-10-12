import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import 'default_text_form_field.dart';

class PasswordFormFieldBuilder extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const PasswordFormFieldBuilder({
    super.key,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextFormField(
      label: 'Password',
      hint: 'Enter your password',
      suffixIcon: 'assets/icons/Lock.svg',
      isPassword: true,
      validator: (value) {
        if (value!.isEmpty) {
          return kPasswordNullError;
        } else if (value.length < 8) {
          return kPasswordShortError;
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          if (formKey.currentState!.validate()) {
            formKey.currentState!.save();
          }
        } else if (value.length >= 8) {
          if (formKey.currentState!.validate()) {
            formKey.currentState!.save();
          }
        }
      },
    );
  }
}
