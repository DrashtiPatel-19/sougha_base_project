import '../../../../utils/exports.dart';

class BottomNavigationWidget extends BaseGetView<DashboardController> {

  const BottomNavigationWidget({super.key});

  @override
  String getTag() => (DashboardController).toString();

  @override
  Widget buildView(context) {
    return Obx(
          () =>
          SizedBox(
              height: 85,
              child: ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20) , topRight: Radius.circular(20)),
                  child: BottomNavigationBar(
                    type: BottomNavigationBarType.fixed,
                    backgroundColor: AppColors.colorACA9A3,
                    items: controller.navigationItems,
                    onTap: controller.onItemClick,
                    selectedItemColor: Colors.black,
                    currentIndex: controller.currentIndex.value,
                    selectedLabelStyle: TextStyle(color: AppColors.color514F4C , fontSize: 14),
                    showSelectedLabels: true,
                  ),
              )
          ),
    );
  }
}
