import '../../../utils/exports.dart';

class HelpPage extends BaseGetResponsiveView<HelpController> {
  HelpPage({Key? key}) : super(key: key);

  Widget buildView() {
    return Center(
      child: CustomTextLabelWidget(
        textAlign: TextAlign.center,
        style: AppStyles.textNormal,
        label: AppString.helpKey.tr,
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
    return (HelpController).toString();
  }
}
