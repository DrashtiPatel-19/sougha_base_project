import '../../../utils/exports.dart';

class FAQsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<FAQsController>(FAQsController(), tag: (FAQsController).toString());
  }
}
