import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_hook/constants.dart';

import '../../../size_config.dart';
import '../../../core/functions/custom_input_border.dart';

class DefaultTextFormField extends StatelessWidget {
  final String label;
  final String hint;
  final String suffixIcon;
  final bool isPassword;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  const DefaultTextFormField({
    super.key,
    required this.label,
    required this.hint,
    required this.suffixIcon,
    required this.isPassword,
    required this.validator,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      obscureText: isPassword,
      validator: validator,
      onChanged: onChanged,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 42,
          vertical: 20,
        ),
        enabledBorder: customInputBorder(kTextColor1),
        focusedBorder: customInputBorder(kTextColor1),
        errorBorder: customInputBorder(Colors.red),
        focusedErrorBorder: customInputBorder(Colors.red),
        suffixIcon: Padding(
          padding: EdgeInsets.fromLTRB(
            0,
            getProportionateScreenWidth(20),
            getProportionateScreenWidth(20),
            getProportionateScreenWidth(20),
          ),
          child: SvgPicture.asset(
            suffixIcon,
            height: getProportionateScreenHeight(18),
          ),
        ),
      ),
    );
  }
}
