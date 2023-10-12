import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../core/constants/constants.dart';

class OnBoardingIndicator extends StatelessWidget {
  final PageController boardController;
  final int length;

  const OnBoardingIndicator({
    super.key,
    required this.boardController,
    required this.length,
  });

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: boardController,
      count: length,
      effect: const ExpandingDotsEffect(
        dotColor: kSecondryColor,
        activeDotColor: kPrimaryColor,
        dotWidth: 10.0,
        dotHeight: 10.0,
        expansionFactor: 4,
        spacing: 5.0,
      ),
    );
  }
}
