import 'package:go_router/go_router.dart';

import '../../Features/auth/forgot_password/presentation/views/forgot_password_view.dart';
import '../../Features/auth/sign_in/presentation/views/sign_in_success_view.dart';
import '../../Features/onBoarding/presentation/views/on_boarding_view.dart';
import '../../Features/auth/sign_in/presentation/views/sign_in_view.dart';

abstract class AppRouter {
  static const kSignIn = '/signIn';
  static const kSignInSuccess = '/signInSuccess';
  static const kForgotPassword = '/forgotPassword';

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
      GoRoute(
        path: kSignInSuccess,
        builder: (context, state) => const SignInSuccessView(),
      ),
      GoRoute(
        path: kForgotPassword,
        builder: (context, state) => const ForgortPasswordView(),
      ),
    ],
  );
}
