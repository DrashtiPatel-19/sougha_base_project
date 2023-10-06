import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../../../utils/exports.dart';

class ChangePasswordController extends BaseGetxController {

  final passwordController = TextEditingController().obs;
  final cPasswordController = TextEditingController().obs;
  var isPasswordHidden = true.obs;
  var isCpasswordHidden = true.obs;

  var isVisible = false.obs;
  bool isPasswordEightCharacters = false;
  bool hasPasswordOneNumber = false;
  bool isLowercase = false;

  onPasswordChanged(String password) {
    final numericRegex = RegExp(r'[0-9]');
    final alphaRegex = RegExp(r'[a-z]');

      isPasswordEightCharacters = false;
      if(password.length >= 8)
        isPasswordEightCharacters = true;

      hasPasswordOneNumber = false;
      isLowercase = false;
      if(numericRegex.hasMatch(password))
        hasPasswordOneNumber = true;

      if(alphaRegex.hasMatch(password))
        isLowercase = true;
    }



  @override
  ToolBarModel? setUpToolbar() {
    return ToolBarModel(isToolBarVisible: false, currentController: this);
  }


    void createPasswordClick(){
      toNamed(AppPaths.changepassword);
    }


/*  void callLoginApi() async {
    await LoginRepositoryImpl().login(
        request: LoginRequest(
            userName: "nimit.bagadiya@brainvire.com", password: "Brain@2021"));
  }*/
}
