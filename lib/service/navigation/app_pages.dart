import '../../../utils/exports.dart';

class AppPages {
  AppPages._();

  static final routes = <GetPage>[
    ...LoginRoutes.routes,
    ...SplashRoutes.routes,
    ...DashboardRoutes.routes
  ];
}
