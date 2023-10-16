import '../../../utils/exports.dart';

class ContactUsBinding extends Bindings {
  @override
  void dependencies() {
   Get.put<ContactUsController>(ContactUsController() , tag: (ContactUsController).toString());
  }

}
