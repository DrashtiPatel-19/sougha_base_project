import '../../../utils/exports.dart';

class SplashController extends BaseGetxController {
  @override
  ToolBarModel? setUpToolbar() {
    return ToolBarModel(isToolBarVisible: false, currentController: this);
  }

  @override
  void onInit() {
    print("Pref is :$SharedPref.getBool(PrefsKey.isLoggedIn, false)");
    Future.delayed(const Duration(seconds: Dimens.timeDelay2), () => {
      if(SharedPref.getBool(PrefsKey.isLoggedIn)){
        {toNamed(AppPaths.home)}
      }else if(!SharedPref.getBool(PrefsKey.isLoggedIn)){
        {toNamed(AppPaths.welcome)}
      },

    });
    super.onInit();
  }
}
