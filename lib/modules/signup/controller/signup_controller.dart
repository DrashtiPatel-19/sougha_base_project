import '../../../utils/exports.dart';

class SignupController extends BaseGetxController{

  var isPasswordHidden = true.obs;
  var isConfirmPasswordHidden = true.obs;
  final nameController = TextEditingController().obs;
  final emailController = TextEditingController().obs;
  final mobileController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final cPasswordController = TextEditingController().obs;

  void callSignupClick(){
    toNamed(AppPaths.emailverification);
  }

  void callOnBackPress(){
    toNamed(AppPaths.login);
  }

  @override
  ToolBarModel? setUpToolbar() {
    return ToolBarModel(isToolBarVisible: false, currentController: this);
  }


}