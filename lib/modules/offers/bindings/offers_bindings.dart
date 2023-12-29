import '../../../utils/exports.dart';

class OffersBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<OffersController>(
        OffersController(),
        tag: (OffersController).toString());
  }
}
