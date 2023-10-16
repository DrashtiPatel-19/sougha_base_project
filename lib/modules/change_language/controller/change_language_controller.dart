import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../../../utils/exports.dart';

class ChangeLanguageController extends BaseGetxController {


  final isIconVisible = false.obs;

  @override
  ToolBarModel? setUpToolbar() {
    return ToolBarModel(isToolBarVisible: false, currentController: this);
  }


    void createPasswordClick(){
      toNamed(AppPaths.changepasswordconfirmation);
    }


/*  void callLoginApi() async {
    await LoginRepositoryImpl().login(
        request: LoginRequest(
            userName: "nimit.bagadiya@brainvire.com", password: "Brain@2021"));
  }*/
}
