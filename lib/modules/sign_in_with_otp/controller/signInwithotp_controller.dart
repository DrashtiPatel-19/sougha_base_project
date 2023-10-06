import '../../../../utils/exports.dart';

class SigninWithOtpController extends BaseGetxController {


  @override
  ToolBarModel? setUpToolbar() {
    return ToolBarModel(isToolBarVisible: false, currentController: this);
  }

  void loginClick() {
    toNamed(AppPaths.dashboard);
  }

  void signInOtpClick(){
    toNamed(AppPaths.signinwithotp);
  }

/*  void callLoginApi() async {
    await LoginRepositoryImpl().login(
        request: LoginRequest(
            userName: "nimit.bagadiya@brainvire.com", password: "Brain@2021"));
  }*/
}
