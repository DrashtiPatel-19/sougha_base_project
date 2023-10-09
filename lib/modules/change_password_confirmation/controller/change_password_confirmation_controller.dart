import '../../../../utils/exports.dart';

class ChangePasswordConfirmationController extends BaseGetxController {

  void callContinueClick(){
    toNamed(AppPaths.dashboard);
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
