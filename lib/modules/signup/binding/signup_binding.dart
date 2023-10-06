import '../../../utils/exports.dart';


class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SignupController>(SignupController(),
        tag: (SignupController).toString());
  }
}