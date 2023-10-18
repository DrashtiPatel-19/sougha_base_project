import '../../../utils/exports.dart';

class TermsConditionBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<TermsConditionController>(TermsConditionController(), tag: (TermsConditionController).toString());
  }
}
