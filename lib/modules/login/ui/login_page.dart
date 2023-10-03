import '../../../utils/exports.dart';

class LoginPage extends BaseGetResponsiveView<LoginController> {
  LoginPage({Key? key}) : super(key: key);

  Widget buildView() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            AppString.loginDescKey.tr,
          ),
          const SizedBox(
            height: Dimens.space20,
          ),
          ElevatedButton(
            onPressed: () {
              controller.loginClick();
            },
            child: Text(AppString.loginKey.tr),
          ),
        ],
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
    return (LoginController).toString();
  }
}
