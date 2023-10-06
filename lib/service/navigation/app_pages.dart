import '../../../utils/exports.dart';

class AppPages {
  AppPages._();

  static final routes = <GetPage>[
    ...SplashRoutes.routes,
    ...WelcomeRoutes.routes,
    ...LoginRoutes.routes,
    ...SignupRoutes.routes,
    ...SignInWithOtpRoutes.routes,
    ...DashboardRoutes.routes
  ];
}
