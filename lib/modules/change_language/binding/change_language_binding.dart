import '../../../utils/exports.dart';

class ChangeLanguageBinding extends Bindings {
  @override
  void dependencies() {
   Get.put<ChangeLanguageController>(ChangeLanguageController() , tag: (ChangeLanguageController).toString());
  }

}
