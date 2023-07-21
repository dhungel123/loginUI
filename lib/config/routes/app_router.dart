
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:login_screen/config/routes/paths.dart';
import 'package:login_screen/presentation/screens/forget_password.dart';
import 'package:login_screen/presentation/screens/loginPage.dart';
import 'package:login_screen/presentation/screens/otp_page.dart';
import 'package:login_screen/presentation/screens/reset_page.dart';
import 'package:login_screen/presentation/screens/signup_page.dart';

class AppRouter {
  static final routeKey = GlobalKey<NavigatorState>();

  static final router = GoRouter(

      navigatorKey: routeKey,

      initialLocation: Paths.loginPage.path,

      routes: [
        GoRoute(
            path: Paths.loginPage.path,
            name: Paths.loginPage.routeName,
            pageBuilder: (context, state) => FadeTransitionPage(
                key: state.pageKey, child: const LoginPage())
        ),
        GoRoute(
            path: Paths.signupPage.path,
          name:Paths.signupPage.routeName,
          pageBuilder: (context,state)=>FadeTransitionPage(
              key: state.pageKey,
              child: const SignUpPage()
          )
        ),
        GoRoute(
          path: Paths.forgetPasswordPage.path,
          name:Paths.forgetPasswordPage.routeName,
          pageBuilder: (context,state)=>FadeTransitionPage(
            key: state.pageKey,
            child: ForgetPassword(),
          )
        ),
        GoRoute(
          path: Paths.resetPassword.path,
          name: Paths.resetPassword.routeName,
          pageBuilder: (context,state)=>FadeTransitionPage(
            key: state.pageKey,
            child: ResetPage(),
          )
        ),
        GoRoute(
          path: Paths.otpPage.path,
          name: Paths.otpPage.routeName,
          pageBuilder: (context,state)=>FadeTransitionPage(
            key: state.pageKey,
            child: OtpPage(),
          )
        )

      ]
  );
}

class FadeTransitionPage extends CustomTransitionPage<void> {
  FadeTransitionPage({required LocalKey super.key, required super.child})
      : super(
            transitionsBuilder: (c, animation, a2, child) => FadeTransition(
                  opacity: animation.drive(CurveTween(curve: Curves.easeIn)),
                  child: child,
                ));
}
