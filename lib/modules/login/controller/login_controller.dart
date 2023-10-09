import '../../../../utils/exports.dart';

class LoginController extends BaseGetxController {
  var isPasswordHidden = true.obs;
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  @override
  ToolBarModel? setUpToolbar() {
    return ToolBarModel(isToolBarVisible: false, currentController: this);
  }

  @override
  void onInit() {

    super.onInit();
  }

  void loginClick() {
    toNamed(AppPaths.dashboard);
  }

  void signInOtpClick() {
    toNamed(AppPaths.signinwithotp);
  }

  void callLoginApi() async {
    await LoginRepositoryImpl().login(
        request: LoginRequest(
            userName: emailController.value.text,
            password: passwordController.value.text,
            device_type: "Android",
            device_token:
                "fXUd73DOREmF0LdY9bn4oY:APA91bGdt8APNc_sZ1hzr3fWkN16fWEKydDIxA8hxKyz2DWVf8RwNG3Ly6_THmstJ9b2Gq5Dwc5nwozPNimMDbpCkNbcJbe-_eKBItDxQ3Nsouh7j61V0i5FXxxouQW9R2mKHHkDwGvZ")
    );

    //userName: "nimit.bagadiya@brainvire.com", password: "Brain@2021"));
  }
}
