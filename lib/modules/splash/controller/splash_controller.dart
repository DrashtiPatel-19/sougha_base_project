import '../../../utils/exports.dart';

class SplashController extends BaseGetxController {
  @override
  ToolBarModel? setUpToolbar() {
    return ToolBarModel(isToolBarVisible: false, currentController: this);
  }

  @override
  void onInit() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarColor: AppColors.colorC4C0BA,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: AppColors.onBackground,
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarDividerColor: AppColors.onBackground,
      ),
    );
    print("Pref is :$SharedPref.getBool(PrefsKey.isLoggedIn, false)");
    Future.delayed(
        const Duration(seconds: Dimens.timeDelay2),
        () => {
              if (SharedPref.getBool(PrefsKey.isLoggedIn))
                {
                  {toNamed(AppPaths.home)}
                }
              else if (!SharedPref.getBool(PrefsKey.isLoggedIn))
                {
                  {toNamed(AppPaths.welcome)}
                },
            });
    super.onInit();
  }
}
