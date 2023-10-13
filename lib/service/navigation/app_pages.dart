import '../../../utils/exports.dart';

class AppPages {
  AppPages._();

  static final routes = <GetPage>[
    ...SplashRoutes.routes,
    ...WelcomeRoutes.routes,
    ...LoginRoutes.routes,
    ...SignupRoutes.routes,
    ...SignInWithOtpRoutes.routes,
    ...OtpVerificationRoutes.routes,
    ...ChangePasswordRoutes.routes,
    ...ChangePasswordConfirmationRoutes.routes,
    ...EmailConfirmationRoutes.routes,
    ...DashboardRoutes.routes,
    ...MyProfileRoutes.routes,
    ...TermsConditionRoute.routes,
    ...PrivacyPolicyRoute.routes
  ];
}
