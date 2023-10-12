import '../../../../utils/exports.dart';

class BottomNavigationWidget extends BaseGetView<DashboardController> {

  const BottomNavigationWidget({super.key});

  @override
  String getTag() => (DashboardController).toString();

  @override
  Widget buildView(context) {

/*
    return Scaffold(
      bottomNavigationBar: MotionTabBar(
        controller: _motionTabBarController, // ADD THIS if you need to change your tab programmatically
        initialSelectedTab: "Home",
        useSafeArea: true, // default: true, apply safe area wrapper
        labels: const ["Home", "Offers", "Rewards", "Brands" , "Accont"],
        icons: const [Icons.home, Icons.percent ,  Icons.card_giftcard, Icons.star, Icons.person],
        tabSize: 70,
        tabBarHeight: 70,
        textStyle: const TextStyle(
          fontSize: 16,
          color: Colors.black,
          fontFamily: 'josefinsans',
          fontWeight: FontWeight.w500,
        ),
        tabIconColor:AppColors.color514F4C,
        tabIconSize: 28.0,
        tabIconSelectedSize: 26.0,
        tabSelectedColor: AppColors.color686662,
        tabIconSelectedColor: Colors.white,
        tabBarColor: AppColors.colorACA9A3,
        onTabItemSelected: (int value) {
         */
/* setState(() {
            _motionTabBarController!.index = value;
          });*//*

        },
      ),
      body: TabBarView(children: [

      ],

      ),
    );
*/
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
                    currentIndex: controller.currentIndex.value,
                    selectedLabelStyle: TextStyle(color: AppColors.color514F4C , fontSize: 14),
                    showSelectedLabels: true,
                  ),
              )
          ),
    );
  }
}
