import 'package:webview_flutter/webview_flutter.dart';

import '../../../../utils/exports.dart';

class PrivacyPolicyController extends BaseGetxController {

  final webviewController = WebViewController;

  @override
  ToolBarModel? setUpToolbar() {
    return ToolBarModel(isToolBarVisible: false, currentController: this);
  }


}
