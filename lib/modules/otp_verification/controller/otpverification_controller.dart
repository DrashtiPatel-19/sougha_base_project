import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../../../utils/exports.dart';

class OtpVerificationController extends BaseGetxController {

  final otpVerified = OtpTextField().obs;
  final secondsRemaining = 30;



  @override
  ToolBarModel? setUpToolbar() {
    return ToolBarModel(isToolBarVisible: false, currentController: this);
  }

  void checkOtp(){
    if(otpVerified.value == "0000"){
      Get.toNamed(AppPaths.dashboard);
    }
  }



/*  void callLoginApi() async {
    await LoginRepositoryImpl().login(
        request: LoginRequest(
            userName: "nimit.bagadiya@brainvire.com", password: "Brain@2021"));
  }*/
}
