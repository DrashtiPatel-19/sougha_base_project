import '../../utils/exports.dart';

class LoginRoutes {
  LoginRoutes._();

  static final routes = [
    GetPage(
        name: AppPaths.login,
        page: LoginPage.new,
        participatesInRootNavigator: true,
        binding: LoginBinding(),
        transition: Transition.rightToLeft),
  ];
}

class SplashRoutes {
  SplashRoutes._();

  static final routes = [
    GetPage(
        name: AppPaths.initial,
        page: SplashPage.new,
        participatesInRootNavigator: true,
        binding: SplashBinding(),
        transition: Transition.rightToLeft),
  ];
}

class DashboardRoutes {
  DashboardRoutes._();

  static final routes = [
    GetPage(
        name: AppPaths.dashboard,
        page: DashboardPage.new,
        participatesInRootNavigator: true,
        preventDuplicates: true,
        binding: DashboardBindings(),
        children: [...HomeRoutes.routes, ...HelpRoutes.routes],
        transition: Transition.noTransition),
  ];
}

class HomeRoutes {
  HomeRoutes._();

  static final routes = [
    GetPage(
        name: AppPaths.home,
        transitionDuration: Duration.zero,
        page: HomePage.new,
        preventDuplicates: true,
        binding: HomeBindings(),
        transition: Transition.noTransition),
  ];
}

class HelpRoutes {
  HelpRoutes._();

  static final routes = [
    GetPage(
        name: AppPaths.help,
        page: HelpPage.new,
        transitionDuration: Duration.zero,
        preventDuplicates: true,
        binding: HelpBindings(),
        transition: Transition.noTransition),
  ];
}
