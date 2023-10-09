import '../../../utils/exports.dart';

class HomeController extends BaseGetxController {
  String email = SharedPref.getString(PrefsKey.keyEmail);

  @override
  ToolBarModel? setUpToolbar() {
    return ToolBarModel(isToolBarVisible: false, currentController: this);
  }



}
