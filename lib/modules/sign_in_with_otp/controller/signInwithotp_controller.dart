import '../../../../utils/exports.dart';

class SigninWithOtpController extends BaseGetxController {

  final emailController = TextEditingController().obs;


  @override
  ToolBarModel? setUpToolbar() {
    return ToolBarModel(isToolBarVisible: false, currentController: this);
  }

  void continueBtnClick(){
    Get.toNamed(AppPaths.otpverification);
  }



/*  void callLoginApi() async {
    await LoginRepositoryImpl().login(
        request: LoginRequest(
            userName: "nimit.bagadiya@brainvire.com", password: "Brain@2021"));
  }*/
}
