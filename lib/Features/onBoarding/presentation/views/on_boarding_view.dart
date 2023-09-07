import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';
import './widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'SKIP',
              style: TextStyle(
                color: kPrimaryColor,
              ),
            ),
          ),
        ],
      ),
      body: const OnBoardingViewBody(),
    );
  }
}
