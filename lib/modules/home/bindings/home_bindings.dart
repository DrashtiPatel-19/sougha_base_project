import '../../../utils/exports.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController(), tag: (HomeController).toString());
  }
}
