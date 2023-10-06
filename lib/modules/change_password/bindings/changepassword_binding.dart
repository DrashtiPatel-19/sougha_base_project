import '../../../utils/exports.dart';

class ChangePasswordBinding extends Bindings {
  @override
  void dependencies() {
   Get.put<ChangePasswordController>(ChangePasswordController() , tag: (ChangePasswordController).toString());
  }

}
