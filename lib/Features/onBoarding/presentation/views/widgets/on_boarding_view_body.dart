import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store_hook/core/utils/app_router.dart';
import 'package:store_hook/size_config.dart';

import '../../../../../core/widgets/default_button.dart';
import '../../../data/models/on_boarding.dart';
import './on_boarding_content.dart';
import './on_boarding_indicator.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<OnBoarding> onBoardingData = [
      OnBoarding(
        text: 'Welcome to Store Hook, Let\'s shop!',
        image: 'assets/images/splash_1.png',
      ),
      OnBoarding(
        text: 'We help people connect with store\naround Egypt',
        image: 'assets/images/splash_2.png',
      ),
      OnBoarding(
        text: 'We show the easy way to shop\nJust stay at home with us',
        image: 'assets/images/splash_3.png',
      ),
    ];

    final boardController = PageController();

    return Center(
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
              controller: boardController,
              itemBuilder: (context, index) => OnBoardingContent(
                onBoardingData: onBoardingData[index],
              ),
              itemCount: onBoardingData.length,
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(
                  20,
                ),
              ),
              child: Column(
                children: [
                  const Spacer(),
                  OnBoardingIndicator(
                    boardController: boardController,
                    length: onBoardingData.length,
                  ),
                  const Spacer(
                    flex: 3,
                  ),
                  DefaultButton(
                    text: 'Continue',
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.kSignIn);
                    },
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
