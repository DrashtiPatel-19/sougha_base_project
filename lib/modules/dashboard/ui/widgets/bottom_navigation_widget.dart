import '../../../../utils/exports.dart';

class BottomNavigationWidget extends BaseGetView<DashboardController> {
  const BottomNavigationWidget({super.key});

  @override
  String getTag() => (DashboardController).toString();

  @override
  Widget buildView(context) {
    return Obx(
      () => SizedBox(
        height: Dimens.bottomNavigationBarHeight,
         child: BottomNavigationBar(
          iconSize: Dimens.iconSize14,
          items: controller.navigationItems,
          onTap: controller.onItemClick,
          currentIndex: controller.currentIndex.value,

        ),
      ),
    );
  }
}
