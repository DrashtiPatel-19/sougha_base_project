import '../../../utils/exports.dart';
import '../../signup/ui/custom_switch.dart';

class MyAccountsPage extends BaseGetResponsiveView<MyAccountsController> {
  MyAccountsPage({Key? key}) : super(key: key);

  Widget buildView() {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 280,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomLeft,
                      stops: const [
                        0.1,
                        0.1,
                        0.8
                      ],
                      colors: [
                        AppColors.colorGradient1,
                        AppColors.colorGradient1,
                        AppColors.colorStatusbar
                      ]),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30.0, left: 20),
                            child: Icon(
                              Icons.arrow_back_outlined,
                              color: AppColors.color686662,
                            ),
                          ),
                          onTap: () {
                            Get.back();
                            //Get.toNamed(AppPaths.welcome);
                          },
                        ),
                      ],
                    ),
                    Center(
                      child: Stack(
                        children: [
                          Container(
                            child: Assets.png.icProfile.image(width: 100),
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                    width: 3, color: AppColors.color686662),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(150))),
                            padding: EdgeInsets.all(5),
                          ),
                          Positioned(
                            bottom: -5.0,
                            right: 0.0,
                            child: IconButton(
                              icon: Assets.png.icCamera.image(),
                              onPressed: () {
                                  controller.showBottomSheet();
                                },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      AppString.txtMyAccount,
                      style: TextStyle(
                          color: AppColors.color212121,
                          fontFamily: 'josefinsans',
                          fontWeight: FontWeight.w600,
                          fontSize: 26),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      AppString.txtManageAcc,
                      style: TextStyle(
                          color: AppColors.color212121,
                          fontFamily: 'josefinsans',
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 2,
                        color: Colors.white,
                        shadowColor: Colors.grey.shade100,
                        child: Theme(
                          data: Theme.of(Get.key.currentContext!)
                              .copyWith(dividerColor: Colors.transparent),
                          child: ExpansionTile(
                            title: Text("ACCOUNT DETAIL",
                                style: TextStyle(
                                    color: AppColors.color212121,
                                    fontFamily: 'josefinsans',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18)),
                            trailing: Icon(
                              Icons.arrow_drop_down_sharp,
                              color: Colors.black,
                            ),
                            maintainState: false,
                            expandedCrossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30.0, top: 10),
                                    child: Text(
                                      AppString.txtMyProfile,
                                      style: TextStyle(
                                          color: AppColors.color00000080,
                                          fontSize: 20,
                                          fontFamily: 'josefinsans'),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 18.0, top: 10),
                                    child: InkWell(
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: AppColors.color686662,
                                      ),
                                      onTap: () {
                                        controller.callMyProfileClick();
                                      },
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                height: 2,
                                color: AppColors.colorACA9A3,
                                indent: 30,
                                endIndent: 10,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30.0, top: 10),
                                    child: Text(
                                      AppString.txtTransactions,
                                      style: TextStyle(
                                          color: AppColors.color00000080,
                                          fontSize: 20,
                                          fontFamily: 'josefinsans'),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 18.0, top: 10),
                                    child: InkWell(
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: AppColors.color686662,
                                      ),
                                      onTap: () {
                                        Get.back();
                                        //Get.toNamed(AppPaths.welcome);
                                      },
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                height: 2,
                                color: AppColors.colorACA9A3,
                                indent: 30,
                                endIndent: 10,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30.0, top: 10),
                                    child: Text(
                                      AppString.txtClaimMyRewards,
                                      style: TextStyle(
                                          color: AppColors.color00000080,
                                          fontSize: 20,
                                          fontFamily: 'josefinsans'),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 18.0, top: 10),
                                    child: InkWell(
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: AppColors.color686662,
                                      ),
                                      onTap: () {
                                        Get.back();
                                        //Get.toNamed(AppPaths.welcome);
                                      },
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                height: 2,
                                color: AppColors.colorACA9A3,
                                indent: 30,
                                endIndent: 10,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30.0, top: 10),
                                    child: Text(
                                      AppString.txtRewardsCalculator,
                                      style: TextStyle(
                                          color: AppColors.color00000080,
                                          fontSize: 20,
                                          fontFamily: 'josefinsans'),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 18.0, top: 10),
                                    child: InkWell(
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: AppColors.color686662,
                                      ),
                                      onTap: () {
                                        Get.back();
                                        //Get.toNamed(AppPaths.welcome);
                                      },
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                height: 2,
                                color: AppColors.colorACA9A3,
                                indent: 30,
                                endIndent: 10,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30.0, top: 10),
                                    child: Text(
                                      AppString.txtChangePassword,
                                      style: TextStyle(
                                          color: AppColors.color00000080,
                                          fontSize: 20,
                                          fontFamily: 'josefinsans'),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 18.0, top: 10),
                                    child: InkWell(
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: AppColors.color686662,
                                      ),
                                      onTap: () {
                                        controller.callChangePasswordClick();
                                      },
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                height: 2,
                                color: AppColors.colorACA9A3,
                                indent: 30,
                                endIndent: 10,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 2,
                        color: Colors.white,
                        shadowColor: Colors.grey.shade100,
                        child: Theme(
                          data: Theme.of(Get.key.currentContext!)
                              .copyWith(dividerColor: Colors.transparent),
                          child: ExpansionTile(
                            title: Text(AppString.txtCommunication,
                                style: TextStyle(
                                    color: AppColors.color212121,
                                    fontFamily: 'josefinsans',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18)),
                            trailing: Icon(
                              Icons.arrow_drop_down_sharp,
                              color: Colors.black,
                            ),
                            maintainState: false,
                            expandedCrossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30.0, top: 10),
                                    child: Text(
                                      AppString.txtPushNotification,
                                      style: TextStyle(
                                          color: AppColors.color00000080,
                                          fontSize: 20,
                                          fontFamily: 'josefinsans'),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          right: 18.0, top: 10),
                                      child: StyledSwitch(
                                        onToggled: (bool isToggled) {},
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                height: 2,
                                color: AppColors.colorACA9A3,
                                indent: 30,
                                endIndent: 10,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30.0, top: 10),
                                    child: Text(
                                      AppString.txtEmailNotification,
                                      style: TextStyle(
                                          color: AppColors.color00000080,
                                          fontSize: 20,
                                          fontFamily: 'josefinsans'),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          right: 18.0, top: 10),
                                      child: StyledSwitch(
                                        onToggled: (bool isToggled) {},
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                height: 2,
                                color: AppColors.colorACA9A3,
                                indent: 30,
                                endIndent: 10,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30.0, top: 10),
                                    child: Text(
                                      AppString.txtSmsNotification,
                                      style: TextStyle(
                                          color: AppColors.color00000080,
                                          fontSize: 20,
                                          fontFamily: 'josefinsans'),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          right: 18.0, top: 10),
                                      child: StyledSwitch(
                                        onToggled: (bool isToggled) {},
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                height: 2,
                                color: AppColors.colorACA9A3,
                                indent: 30,
                                endIndent: 10,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 2,
                        color: Colors.white,
                        shadowColor: Colors.grey.shade100,
                        child: Theme(
                          data: Theme.of(Get.key.currentContext!)
                              .copyWith(dividerColor: Colors.transparent),
                          child: ExpansionTile(
                            title: Text(AppString.txtAppPref,
                                style: TextStyle(
                                    color: AppColors.color212121,
                                    fontFamily: 'josefinsans',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18)),
                            trailing: Icon(
                              Icons.arrow_drop_down_sharp,
                              color: Colors.black,
                            ),
                            maintainState: false,
                            expandedCrossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30.0, top: 10),
                                    child: Text(
                                      AppString.txtAllowFaceId,
                                      style: TextStyle(
                                          color: AppColors.color00000080,
                                          fontSize: 20,
                                          fontFamily: 'josefinsans'),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          right: 18.0, top: 10),
                                      child: StyledSwitch(
                                        onToggled: (bool isToggled) {},
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                height: 2,
                                color: AppColors.colorACA9A3,
                                indent: 30,
                                endIndent: 10,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30.0, top: 10),
                                    child: Text(
                                      AppString.txtCountryLang,
                                      style: TextStyle(
                                          color: AppColors.color00000080,
                                          fontSize: 20,
                                          fontFamily: 'josefinsans'),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 18.0, top: 10),
                                    child: InkWell(
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: AppColors.color686662,
                                      ),
                                      onTap: () {
                                        Get.back();
                                        //Get.toNamed(AppPaths.welcome);
                                      },
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                height: 2,
                                color: AppColors.colorACA9A3,
                                indent: 30,
                                endIndent: 10,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 2,
                        color: Colors.white,
                        shadowColor: Colors.grey.shade100,
                        child: Theme(
                          data: Theme.of(Get.key.currentContext!)
                              .copyWith(dividerColor: Colors.transparent),
                          child: ExpansionTile(
                            title: Text(AppString.txtCustService,
                                style: TextStyle(
                                    color: AppColors.color212121,
                                    fontFamily: 'josefinsans',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18)),
                            trailing: Icon(
                              Icons.arrow_drop_down_sharp,
                              color: Colors.black,
                            ),
                            maintainState: false,
                            expandedCrossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30.0, top: 10),
                                    child: Text(
                                      AppString.txtFAQ,
                                      style: TextStyle(
                                          color: AppColors.color00000080,
                                          fontSize: 20,
                                          fontFamily: 'josefinsans'),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 18.0, top: 10),
                                    child: InkWell(
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: AppColors.color686662,
                                      ),
                                      onTap: () {
                                        Get.back();
                                        //Get.toNamed(AppPaths.welcome);
                                      },
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                height: 2,
                                color: AppColors.colorACA9A3,
                                indent: 30,
                                endIndent: 10,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30.0, top: 10),
                                    child: Text(
                                      AppString.txtTerms,
                                      style: TextStyle(
                                          color: AppColors.color00000080,
                                          fontSize: 20,
                                          fontFamily: 'josefinsans'),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 18.0, top: 10),
                                    child: InkWell(
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: AppColors.color686662,
                                      ),
                                      onTap: () {
                                        Get.back();
                                        //Get.toNamed(AppPaths.welcome);
                                      },
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                height: 2,
                                color: AppColors.colorACA9A3,
                                indent: 30,
                                endIndent: 10,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30.0, top: 10),
                                    child: Text(
                                      AppString.txtPrivacy,
                                      style: TextStyle(
                                          color: AppColors.color00000080,
                                          fontSize: 20,
                                          fontFamily: 'josefinsans'),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 18.0, top: 10),
                                    child: InkWell(
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: AppColors.color686662,
                                      ),
                                      onTap: () {
                                        Get.back();
                                        //Get.toNamed(AppPaths.welcome);
                                      },
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                height: 2,
                                color: AppColors.colorACA9A3,
                                indent: 30,
                                endIndent: 10,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30.0, top: 10),
                                    child: Text(
                                      AppString.txtContactUs,
                                      style: TextStyle(
                                          color: AppColors.color00000080,
                                          fontSize: 20,
                                          fontFamily: 'josefinsans'),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 18.0, top: 10),
                                    child: InkWell(
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: AppColors.color686662,
                                      ),
                                      onTap: () {
                                        Get.back();
                                        //Get.toNamed(AppPaths.welcome);
                                      },
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                height: 2,
                                color: AppColors.colorACA9A3,
                                indent: 30,
                                endIndent: 10,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30.0, top: 10),
                                    child: InkWell(
                                      child: Text(
                                        AppString.txtSignOut,
                                        style: TextStyle(
                                            color: AppColors.color87744E,
                                            fontSize: 20,
                                            fontFamily: 'josefinsans'),
                                      ),
                                      onTap: () {
                                        SharedPref.clearData();
                                        print("Sign out From My Account");
                                        Get.toNamed(AppPaths.welcome);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
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
    return (MyAccountsController).toString();
  }
}
