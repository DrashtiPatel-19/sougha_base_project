import '../../../utils/exports.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TermsConditionPage extends BaseGetResponsiveView<TermsConditionController> {

  Widget buildView() {
    WebViewController _controller;

    return Scaffold(
      body: Center(
        child: WebView(
          initialUrl: 'https://www.google.com/',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller = webViewController;
          },
        ),
      ),
    );
  }



  @override
  Widget buildDesktopWidget() {
    return buildView();
  }

  @override
  Widget buildPhoneWidget() {
    return buildView();
  }

  @override
  Widget buildTabletWidget() {
    return buildView();
  }

  @override
  String getTag() {
    return (TermsConditionController).toString();
  }
}
