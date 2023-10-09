import '../../../../utils/exports.dart';

class EmailConfirmationController extends BaseGetxController {

  void callGoToSignIn(){
    toNamed(AppPaths.login);
  }



  @override
  ToolBarModel? setUpToolbar() {
    return ToolBarModel(isToolBarVisible: false, currentController: this);
  }




/*  void callLoginApi() async {
    await LoginRepositoryImpl().login(
        request: LoginRequest(
            userName: "nimit.bagadiya@brainvire.com", password: "Brain@2021"));
  }*/
}
