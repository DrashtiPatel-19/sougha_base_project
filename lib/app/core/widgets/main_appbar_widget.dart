import '../../../utils/exports.dart';

/// use this class to show AppBar at app level(Global or Shared AppBar)
/// ( to be used in MyApp Widget)

class MainAppBarWidget<T extends BaseGetxController> extends GetResponsiveView<T> {
  MainAppBarWidget({Key? key}) : super(key: key);

  @override
  String? get tag => (T).toString();

  @override
  T get controller {
    T root = Get.find<T>(tag: (tag));
    return root;
  }

  @override
  Widget desktop() {
    return _buildView();
  }

  @override
  Widget tablet() {
    return _buildView();
  }

  @override
  Widget phone() {
    return _buildView();
  }

  Widget _buildView() {
    return Obx(
      () => Visibility(
        visible: controller.toolBarModel.value.isToolBarVisible,
        child: AppBar(
            title: CustomTextLabelWidget(label: AppString.inPhoneKey.tr)),
      ),

    );
  }
}
