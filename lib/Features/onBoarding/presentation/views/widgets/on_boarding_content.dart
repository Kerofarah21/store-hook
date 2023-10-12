import 'package:flutter/material.dart';
import 'package:store_hook/Features/onBoarding/data/models/on_boarding.dart';
import 'package:store_hook/core/constants/constants.dart';
import 'package:store_hook/core/utils/size_config.dart';

class OnBoardingContent extends StatelessWidget {
  final OnBoarding onBoardingData;

  const OnBoardingContent({
    super.key,
    required this.onBoardingData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          'STORE HOOK',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          onBoardingData.text,
          textAlign: TextAlign.center,
        ),
        const Spacer(
          flex: 2,
        ),
        Image.asset(
          onBoardingData.image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
