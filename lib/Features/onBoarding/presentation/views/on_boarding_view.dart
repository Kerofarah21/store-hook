import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../constants.dart';
import '../../../../core/utils/app_router.dart';
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
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSignIn);
            },
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
