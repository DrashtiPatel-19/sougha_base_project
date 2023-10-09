import '../../../utils/exports.dart';

class WelcomeController extends BaseGetxController{
  @override
  ToolBarModel? setUpToolbar() {
    return ToolBarModel(isToolBarVisible: false, currentController: this);
  }

  @override
  void onControllerInit() {
    super.onControllerInit();
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
  }

  void callCloseClick(){
    SystemNavigator.pop();
  }

  void signinClick(){
    toNamed(AppPaths.login);
  }

  void signupClick(){
    toNamed(AppPaths.signup);
  }
}