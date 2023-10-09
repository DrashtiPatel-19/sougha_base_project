import '../../../utils/exports.dart';

class ChangePasswordConfirmationBinding extends Bindings {
  @override
  void dependencies() {
   Get.put<ChangePasswordConfirmationController>(ChangePasswordConfirmationController() , tag: (ChangePasswordConfirmationController).toString());
  }

}
