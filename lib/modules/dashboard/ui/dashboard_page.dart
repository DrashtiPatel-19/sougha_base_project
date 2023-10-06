import '../../../utils/exports.dart';

class DashboardPage extends BaseGetResponsiveView<DashboardController> {
  DashboardPage({super.key});

  @override
  Widget buildPhoneWidget() {
    return buildView();
  }

  @override
  Widget buildDesktopWidget() {
    return buildView();
  }

  @override
  Widget buildTabletWidget() {
    return buildView();
  }

  Widget buildView() {
    return WillPopScope(
      onWillPop: controller.onWillPop,
      child: Scaffold(
        body: Navigator(
          onPopPage: (p0, p1) => p0.didPop(p1),
          initialRoute: AppPaths.home,
          // Needed to update Get.currentRoute and Get.previousRoute as per
          // this nested navigator.
          observers: [
            GetObserver((p0) {}, Get.routing),
          ],
          onGenerateRoute: (settings) {
            return controller.onGenerateRoute(settings, Get.context!);
          },
          key: Get.nestedKey(1),
        ),

        bottomNavigationBar: const BottomNavigationWidget(),
      ),
    );
  }

  @override
  String getTag() => (DashboardController).toString();
}
