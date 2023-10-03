import '../../../../utils/exports.dart';

class LoginController extends BaseGetxController {
  @override
  ToolBarModel? setUpToolbar() {
    return ToolBarModel(
      isToolBarVisible: false,
      currentController: this
    );
  }
  void loginClick(){
  toNamed(AppPaths.dashboard);
  }
  void callLoginApi() async {
    await LoginRepositoryImpl().login(
        request: LoginRequest(
            userName: "nimit.bagadiya@brainvire.com", password: "Brain@2021"));
  }
}
