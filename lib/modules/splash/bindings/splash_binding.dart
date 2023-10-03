import '../../../utils/exports.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SplashController>(SplashController(),
        tag: (SplashController).toString());
  }
}
