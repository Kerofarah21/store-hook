import 'package:go_router/go_router.dart';

import '../../Features/onBoarding/presentation/views/on_boarding_view.dart';
import '../../Features/sign_in/presentation/views/sign_in_view.dart';

abstract class AppRouter {
  static const kSignIn = '/signIn';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: kSignIn,
        builder: (context, state) => const SignInView(),
      ),
    ],
  );
}
