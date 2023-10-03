import '../../../utils/exports.dart';

class SplashPage extends BaseGetResponsiveView<SplashController> {
  SplashPage({Key? key}) : super(key: key);

  Widget buildView() {
    return Assets.svgs.icAppbarLogo.svg();
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
    return (SplashController).toString();
  }
}
