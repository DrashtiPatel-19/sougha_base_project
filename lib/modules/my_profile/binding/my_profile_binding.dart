import '../../../utils/exports.dart';

class MyProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MyProfileController>(MyProfileController(), tag: (MyProfileController).toString());
  }
}
