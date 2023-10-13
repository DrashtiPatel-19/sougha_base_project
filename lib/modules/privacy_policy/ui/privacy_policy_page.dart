import '../../../utils/exports.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PrivacyPolicyPage extends BaseGetResponsiveView<PrivacyPolicyController> {

  Widget buildView() {
    WebViewController _controller;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: false,
        title: Row(
          children: [
            IconButton(icon : Icon(Icons.arrow_back_outlined , color: AppColors.color686662,),onPressed: () {
              Get.back();
            },),
            SizedBox(width: 20,),
            Text(AppString.txtPrivacy , style: TextStyle(
                color: AppColors.color00000080,
                fontSize: 20,
                fontFamily: 'josefinsans')),
          ],
        ),
      ),      body: Container(
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.all(20),
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
    return (PrivacyPolicyController).toString();
  }
}
