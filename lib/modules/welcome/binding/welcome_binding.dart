import '../../../utils/exports.dart';


class WelcomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<WelcomeController>(WelcomeController(),
        tag: (WelcomeController).toString());
  }
}