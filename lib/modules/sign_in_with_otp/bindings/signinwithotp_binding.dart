import '../../../utils/exports.dart';

class SigninWithOtpBinding extends Bindings {
  @override
  void dependencies() {
   Get.put<SigninWithOtpController>(SigninWithOtpController() , tag: (SigninWithOtpController).toString());
  }

}
