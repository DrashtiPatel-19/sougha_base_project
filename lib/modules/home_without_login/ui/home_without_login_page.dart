import 'package:carousel_slider/carousel_slider.dart';
import '../../../utils/exports.dart';

class HomeWithoutLoginPage
    extends BaseGetResponsiveView<HomeWithoutLoginController> {
  HomeWithoutLoginPage({Key? key}) : super(key: key);

  Widget buildView() {
    return SingleChildScrollView(
      child: Container(
          padding: EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Assets.png.icMainLogo.image(width: 120)),
              SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  Assets.png.icGuestUserbanner.image(),
                  Positioned(
                    bottom:90,
                    left: 30,
                    child: Text(
                      AppString.txtShopEarn,
                      style: TextStyle(
                          color: AppColors.materialWhite.withOpacity(0.8),
                          fontSize: 22,
                          fontFamily: 'josefinsans'),
                    ),
                  ),
                 Positioned(
                      bottom: 30,
                      left: 20,
                      right: 20,
                      child: ElevatedButton(
                          onPressed: () {
                          },
                          style: ButtonStyle(
                              side: MaterialStatePropertyAll(
                                BorderSide(
                                  color: AppColors.color686662.withOpacity(0.6),
                                  style: BorderStyle.solid,
                                  strokeAlign: 1,
                                  width: Dimens.borderWidth1 / 2,
                                ),
                              ),
                              minimumSize: MaterialStatePropertyAll(
                                Size(350 , 0)
                              ),
                              shape:
                              MaterialStatePropertyAll(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              )),
                              backgroundColor:
                              MaterialStatePropertyAll(AppColors.color686662.withOpacity(0.8))),
                          child: const Text(
                            AppString.txtLetsgetStaeted,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'josefinsans',
                                fontSize: 16),
                          )),
                    ),

                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                AppString.txtRewardsToReasure,
                style: TextStyle(
                    color: AppColors.color212121,
                    fontSize: 26,
                    fontFamily: 'josefinsans'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                AppString.txtWelcomeText,
                style: TextStyle(
                    color: AppColors.color212121,
                    fontSize: 15,
                    height: 1.2,
                    fontFamily: 'josefinsans'),
              ),
              SizedBox(
                height: 50,
              ),
              Assets.png.icChairImage.image(),
              SizedBox(
                height: 50,
              ),
              Text(
                AppString.txtGetInstant,
                style: TextStyle(
                    color: AppColors.color212121,
                    fontSize: 26,
                    fontFamily: 'josefinsans'),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                AppString.txtEnjoyBenifits,
                style: TextStyle(
                    color: AppColors.color212121,
                    fontSize: 16,
                    fontFamily: 'josefinsans'),
              ),
              Row(
                children: [
                  Text(AppString.txtSeeBenefits ,
                    style: TextStyle(
                        color: AppColors.color87744E,
                        fontSize: 16,
                        fontFamily: 'josefinsans'), ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_right_alt_outlined) , color: AppColors.color87744E,)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Assets.png.icGuestEarnImage.image(width: 40),
                      SizedBox(
                        height: 15,
                      ),
                      Text(AppString.txtEarnRedeemPoints ,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.color212121,
                          fontSize: 16,
                          fontFamily: 'josefinsans'),)
                    ],
                  ),
                  Column(
                    children: [
                      Assets.png.icGuestCustomerServiceImage.image(width: 40),
                      SizedBox(
                        height: 15,
                      ),
                      Text(AppString.txtPriorityCustomerService ,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColors.color212121,
                            fontSize: 16,
                            fontFamily: 'josefinsans'),)
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Assets.png.icGuestOfferImage.image(width: 40),
                      SizedBox(
                        height: 15,
                      ),
                      Text(AppString.txtExclusiveOffers ,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColors.color212121,
                            fontSize: 16,
                            fontFamily: 'josefinsans'),)
                    ],
                  )
                ],
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Assets.png.icGuestExpressDeliveryImage.image(width: 40),
                      SizedBox(
                        height: 15,
                      ),
                      Text(AppString.txtComplimentaryExpressDelivery ,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColors.color212121,
                            fontSize: 16,
                            fontFamily: 'josefinsans'),)
                    ],
                  ),
                  Column(
                    children: [
                      Assets.png.icGuestGiftImage.image(width: 40),
                      SizedBox(
                        height: 15,
                      ),
                      Text(AppString.txtComplimentaryGifts ,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColors.color212121,
                            fontSize: 16,
                            fontFamily: 'josefinsans'),)
                    ],
                  ),
                  Column(
                    children: [
                      Assets.png.icGuestGiftImage.image(width: 40),
                      SizedBox(
                        height: 15,
                      ),
                      Text(AppString.txtComplimentaryGifts ,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColors.color212121,
                            fontSize: 16,
                            fontFamily: 'josefinsans'),)
                    ],
                  ),
                ],
              ),

            ],
          )),
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
    return (HomeWithoutLoginController).toString();
  }
}
