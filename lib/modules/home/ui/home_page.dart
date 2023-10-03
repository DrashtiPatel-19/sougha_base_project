import '../../../utils/exports.dart';

class HomePage extends BaseGetResponsiveView<HomeController> {
  HomePage({Key? key}) : super(key: key);

  Widget buildView() {
    return Center(
      child: CustomTextLabelWidget(
        textAlign: TextAlign.center,
        style: AppStyles.textNormal,
        label: AppString.homeKey.tr,
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
    return (HomeController).toString();
  }
}
