import '../../../utils/exports.dart';

class HomeWithoutLoginController extends BaseGetxController {
  String email = SharedPref.getString(PrefsKey.keyEmail);
  final pageController = PageController(viewportFraction: 0.8,initialPage: 1);
  int activePage = 1;

  @override
  ToolBarModel? setUpToolbar() {
    return ToolBarModel(isToolBarVisible: false, currentController: this);
  }



}
