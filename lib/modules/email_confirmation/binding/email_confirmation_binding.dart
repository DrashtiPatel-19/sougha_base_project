import '../../../utils/exports.dart';

class EmailConfirmationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<EmailConfirmationController>(EmailConfirmationController() , tag: (EmailConfirmationController).toString());
  }

}