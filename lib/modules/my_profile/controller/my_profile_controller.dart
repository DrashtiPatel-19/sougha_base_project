import '../../../../utils/exports.dart';

class MyProfileController extends BaseGetxController {

  final dateController = TextEditingController().obs;

  @override
  ToolBarModel? setUpToolbar() {
    return ToolBarModel(isToolBarVisible: false, currentController: this);
  }


}
