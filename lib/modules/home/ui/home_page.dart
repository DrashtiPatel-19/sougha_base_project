import '../../../utils/exports.dart';

class HomePage extends BaseGetResponsiveView<HomeController> {
  HomePage({Key? key}) : super(key: key);





  Widget buildView() {
    return Center(
      child: TextButton(
        onPressed: () {
          SharedPref.clearData();
          Get.toNamed(AppPaths.welcome);
        },
        child:Column(
          children: [

           Text(controller.email , style: TextStyle(color: Colors.black),),
            Text(
              "Logout",
            ),

          ],
        )
      )
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
