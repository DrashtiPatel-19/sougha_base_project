import '../../../utils/exports.dart';

class OtpVerificationBinding extends Bindings {
  @override
  void dependencies() {
   Get.put<OtpVerificationController>(OtpVerificationController() , tag: (OtpVerificationController).toString());
  }

}
