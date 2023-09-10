import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'default_text_form_field.dart';

class EmailFormFieldBuilder extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const EmailFormFieldBuilder({
    super.key,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextFormField(
      label: 'Email',
      hint: 'Enter your email',
      suffixIcon: 'assets/icons/Mail.svg',
      isPassword: false,
      validator: (value) {
        if (value!.isEmpty) {
          return kEmailNullError;
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          return kEmailInvalidError;
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          if (formKey.currentState!.validate()) {
            formKey.currentState!.save();
          }
        } else if (emailValidatorRegExp.hasMatch(value)) {
          if (formKey.currentState!.validate()) {
            formKey.currentState!.save();
          }
        }
      },
    );
  }
}
