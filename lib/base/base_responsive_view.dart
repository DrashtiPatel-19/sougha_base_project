import '../utils/exports.dart';

abstract class BaseGetResponsiveView<T extends BaseGetxController>
    extends GetResponsiveView<T> {
  BaseGetResponsiveView({Key? key}) : super(key: key);

  Widget buildPhoneWidget() ;

  Widget buildTabletWidget();

  Widget buildDesktopWidget();

  String getTag();

  @override
  T get controller {
    return Get.find<T>(tag: getTag());
  }

  C getController<C extends GetxController>({String? tag}) {
    return Get.find<C>(tag: tag);
  }

  S getService<S extends GetxService>({String? tag}) {
    return Get.find<S>(tag: tag);
  }

  @override
  Widget desktop() {
    return _buildView(buildDesktopWidget());
  }

  @override
  Widget phone() {
    return _buildView(buildPhoneWidget());
  }

  @override
  Widget tablet() {
    return _buildView(buildTabletWidget());
  }

  //---------------------------------------------------------------------------------

  _buildView(Widget view) {
    return Column(
      children: [
        //app bar
        MainAppBarWidget<T>(),
        //responsive view
        Expanded(child: view)
      ],
    );
  }
}
