import '../../../utils/exports.dart';

class PrivacyPolicyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<PrivacyPolicyController>(PrivacyPolicyController(), tag: (PrivacyPolicyController).toString());
  }
}
