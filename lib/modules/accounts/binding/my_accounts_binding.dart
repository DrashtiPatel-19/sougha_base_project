import '../../../utils/exports.dart';

class MyAccountsBinding extends Bindings {
  @override
  void dependencies() {
   Get.put<MyAccountsController>(MyAccountsController() , tag: (MyAccountsController).toString());
  }

}
