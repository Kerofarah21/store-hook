import 'package:flutter/material.dart';

import '../../../core/utils/size_config.dart';

class TextBlock extends StatelessWidget {
  final String firstText;
  final String secondText;

  const TextBlock({
    super.key,
    required this.firstText,
    required this.secondText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          firstText,
          style: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(28),
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          secondText,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
