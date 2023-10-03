import '../../../utils/exports.dart';

class SplashController extends BaseGetxController {
  @override
  ToolBarModel? setUpToolbar() {
    return ToolBarModel(isToolBarVisible: false, currentController: this);
  }

  @override
  void onInit() {
    Future.delayed(const Duration(seconds: Dimens.timeDelay2),
        () => {toNamed(AppPaths.login)});
    super.onInit();
  }
}
