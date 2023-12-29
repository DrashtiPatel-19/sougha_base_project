import '../../../utils/exports.dart';

class HomeWithoutLoginBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeWithoutLoginController>(HomeWithoutLoginController(), tag: (HomeWithoutLoginController).toString());
  }
}
