import '../../../utils/exports.dart';

class WelcomeController extends BaseGetxController{
  @override
  ToolBarModel? setUpToolbar() {
    return ToolBarModel(isToolBarVisible: false, currentController: this);
  }

  void signinClick(){
    toNamed(AppPaths.login);
  }

  void signupClick(){
    toNamed(AppPaths.signup);
  }
}