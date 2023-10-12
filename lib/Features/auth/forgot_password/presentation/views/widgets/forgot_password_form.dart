import 'package:flutter/material.dart';

import '../../../../../../core/widgets/default_button.dart';
import '../../../../../../core/utils/size_config.dart';
import '../../../../widgets/email_form_field_builder.dart';

class ForgotPasswordForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  ForgotPasswordForm({
    super.key,
  });

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
            height: SizeConfig.screenHeight! * 0.2,
          ),
          DefaultButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              }
            },
            text: 'Send',
          ),
        ],
      ),
    );
  }
}
