
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../utils/exports.dart';

class OtpVerificationController extends BaseGetxController {

  @override
  void onControllerInit() {
    super.onControllerInit();


  }

  @override
  void onInit() {

    super.onInit();
  }

  final first = TextEditingController().obs;
  final second = TextEditingController().obs;
  final third = TextEditingController().obs;
  final fourth = TextEditingController().obs;

  final secondsRemaining = 30;
  final String otp = "1234";


  @override
  ToolBarModel? setUpToolbar() {
    return ToolBarModel(isToolBarVisible: false, currentController: this);
  }

  void checkOtp(){
   if(first.value == "1" && second.value == "2"){
     Fluttertoast.showToast(msg: "Hello" , toastLength: Toast.LENGTH_SHORT);
   }else{
     Fluttertoast.showToast(msg: "Hello Error" , toastLength: Toast.LENGTH_SHORT);

   }

  }



/*  void callLoginApi() async {
    await LoginRepositoryImpl().login(
        request: LoginRequest(
            userName: "nimit.bagadiya@brainvire.com", password: "Brain@2021"));
  }*/
}
