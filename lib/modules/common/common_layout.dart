import 'package:flutter_base/utils/exports.dart';


class CommonLayout extends BaseGetView<HomeController> {
  @override
  Widget buildView(BuildContext context) {
    return Column(
      children: [
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
            /* Text(controller.email,
                    style: TextStyle(
                        color: AppColors.color212121,
                        fontFamily: 'josefinsans',
                        fontSize: 24))*/
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Column(
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
                              crossAxisAlignment: CrossAxisAlignment.end,
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


          ],
        )

      ],
    );
  }

  @override
  String getTag() => (HomeController).toString();
}
