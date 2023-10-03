import '../../../utils/exports.dart';

class DashboardController extends BaseGetxController {
  final currentIndex = 0.obs;

  List<BottomNavigationBarItem> navigationItems = [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
        color: AppColors.inActiveGrayColor,
      ),
      label: AppString.homeKey.tr,
      activeIcon: Icon(
        Icons.home,
        color: AppColors.activeBlueColor,
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.help_outline,
        color: AppColors.inActiveGrayColor,
      ),
      label: AppString.helpKey.tr,
      activeIcon: Icon(
        Icons.help_outline,
        color: AppColors.activeBlueColor,
      ),
    ),
  ];

  onItemClick(int tappedIndex) {
    String path = '/';
    switch (tappedIndex) {
      case 0:
        {
          path = AppPaths.home;
          DebugLog.i(tappedIndex);
          currentIndex.value = 0;
          break;
        }
      case 1:
        {
          path = AppPaths.help;
          DebugLog.i(tappedIndex);
          break;
        }
      default:
        {
          path = "/";
          DebugLog.i("Default");
          break;
        }
    }
    if (Get.currentRoute == path) {
      return;
    }
    offNamedUntil(path, (route) => route.isFirst, id: 1);
  }

  /// Updates current index on back press.
  ///
  /// Getting called when user press system
  /// back button or back button from appBar
  /// to update bottom navigation bar selected
  /// item based on the latest visible route.
  void updateCurrentIndex() {
    switch (Get.currentRoute) {
      case AppPaths.home:
        {
          currentIndex.value = 0;
          break;
        }
      case AppPaths.help:
        {
          currentIndex.value = 1;
          break;
        }
    }
  }

  /// Responsible to handle the system back press for .
  ///
  /// We are using this to update [currentIndex] of bottom navigation bar
  /// and to handle navigation of the nested navigation [Navigator] used in
  /// for bottom navigation bar while user press
  /// the system's back button.
  Future<bool> onWillPop() async {
    if (Get.nestedKey(1)?.currentState?.canPop() == true) {
      await Get.nestedKey(1)?.currentState?.maybePop();
      updateCurrentIndex();
      return Future.value(false);
    }
    return Future.value(true);
  }

  /// Responsible to generate routes for [MainBottomNavigationbarPage] Navigator.
  Route<dynamic>? onGenerateRoute(
      RouteSettings settings, BuildContext context) {
    switch (settings.name) {
      case AppPaths.home:
        {
          currentIndex.value = 0;
          return HomeRoutes.routes.first.createRoute(context);
        }
      case AppPaths.help:
        {
          currentIndex.value = 1;
          return HelpRoutes.routes.first.createRoute(context);
        }
    }
    return null;
  }
}
