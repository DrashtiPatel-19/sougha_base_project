import '../../../utils/exports.dart';

class HelpBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<HelpController>(
        HelpController(),
        tag: (HelpController).toString());
  }
}
