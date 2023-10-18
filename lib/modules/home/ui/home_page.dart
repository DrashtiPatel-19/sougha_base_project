import 'package:carousel_slider/carousel_slider.dart';

import '../../../utils/exports.dart';

class HomePage extends BaseGetResponsiveView<HomeController> {
  HomePage({Key? key}) : super(key: key);

  Widget buildView() {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Assets.png.icTransactionImage.image(width: 50),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        AppString.txtTransactions,
                        style: TextStyle(
                            color: AppColors.color212121,
                            fontFamily: 'josefinsans'),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Assets.png.icClaimsImage.image(width: 50),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        AppString.txtClaims,
                        style: TextStyle(
                            color: AppColors.color212121,
                            fontFamily: 'josefinsans'),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Assets.png.icCalculatorImage.image(width: 50),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        AppString.txtCalculator,
                        style: TextStyle(
                            color: AppColors.color212121,
                            fontFamily: 'josefinsans'),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Assets.png.icNotificationImage.image(width: 25),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text("Hello,",
                      style: TextStyle(
                          color: AppColors.color212121,
                          fontFamily: 'josefinsans',
                          fontSize: 24)),
                  SizedBox(
                    width: 10,
                  ),
                  Text(controller.email,
                      style: TextStyle(
                          color: AppColors.color212121,
                          fontFamily: 'josefinsans',
                          fontSize: 24))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          width: double.infinity,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                transform: GradientRotation(315),
                                stops: const [
                                  0.1,
                                  0.9,
                                  0.1
                                ],
                                colors: [
                                  AppColors.color303030,
                                  AppColors.color5F5F5F,
                                  AppColors.color303030
                                ]),
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            AppString.txtRewardBalance,
                                            style: TextStyle(
                                                color: Colors.white54,
                                                fontFamily: 'josefinsans',
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "129,879",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'josefinsans',
                                                fontSize: 28,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "AED 1295",
                                            style: TextStyle(
                                                color: Colors.white54,
                                                fontFamily: 'josefinsans',
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Assets.png.icMainLogo.image(
                                            width: 80, color: Colors.white),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                children: const [
                                  Text(
                                    "PLATINIUM",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'josefinsans',
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "1 3 5 7",
                                      style: TextStyle(
                                          color: Colors.white54,
                                          fontFamily: 'josefinsans',
                                          fontSize: 20),
                                    ),
                                    Text(
                                      "0 0 3 4",
                                      style: TextStyle(
                                          color: Colors.white54,
                                          fontFamily: 'josefinsans',
                                          fontSize: 20),
                                    ),
                                    Text(
                                      "9 8 3 4",
                                      style: TextStyle(
                                          color: Colors.white54,
                                          fontFamily: 'josefinsans',
                                          fontSize: 20),
                                    ),
                                    Text(
                                      "2 3 6 7",
                                      style: TextStyle(
                                          color: Colors.white54,
                                          fontFamily: 'josefinsans',
                                          fontSize: 20),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Assets.png.icBarcodeImage.image(),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Assets.png.icWalletImage.image(width: 40),
                    SizedBox(
                      width: 20,
                    ),
                    Text(AppString.txtAppWallet,
                        style: TextStyle(
                            color: AppColors.materialWhite,
                            fontFamily: 'josefinsans',
                            fontSize: 20))
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CarouselSlider(
                  items: [
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        image: DecorationImage(
                          image: AssetImage("assets/png/ic_slider_img.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        image: DecorationImage(
                          image: AssetImage("assets/png/ic_slider_img.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        image: DecorationImage(
                          image: AssetImage("assets/png/ic_slider_img.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],

                  options: CarouselOptions(
                    height: 200.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  )),

            ],
          ),
        ),
      ),
    );
  }

  /*AnimatedContainer slider(images, pagePosition, active) {
    double margin = active ? 10 : 20;

    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOutCubic,
      margin: EdgeInsets.all(margin),
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(images[pagePosition]))),
    );
  }

  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: EdgeInsets.all(3),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: currentIndex == index ? Colors.black : Colors.black26,
            shape: BoxShape.circle),
      );
    });
  }
*/
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
