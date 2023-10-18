import 'dart:ffi';

import 'package:fluttertoast/fluttertoast.dart';

import '../../../utils/exports.dart';

class ChangeLanguagePage
    extends BaseGetResponsiveView<ChangeLanguageController> {
  ChangeLanguagePage({Key? key}) : super(key: key);

  Widget buildView() {
    var myListItem = ["UAE", "QATAR", "OMAN"];

    return Scaffold(
      bottomNavigationBar: BottomNavigationWidget(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back_outlined,
                      color: AppColors.color686662,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(AppString.txtCountryLang,
                      style: TextStyle(
                          color: AppColors.color212121,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'josefinsans'))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        elevation: 2,
                        shadowColor: Colors.grey.shade300,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, bottom: 20, left: 20, right: 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "English",
                                style: TextStyle(
                                    color: AppColors.color212121,
                                    fontFamily: 'josefinsans',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Assets.png.icChecked.image(width: 30),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 2,
                        shadowColor: Colors.grey.shade300,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, bottom: 20, left: 20, right: 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "العربية",
                                style: TextStyle(
                                    color: AppColors.color212121,
                                    fontFamily: 'josefinsans',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              //Assets.png.icChecked.image(width: 30),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, position) {
                    return GestureDetector(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        elevation: 4,
                        shadowColor: Colors.white,
                        child: ListTile(
                          onTap: () {
                            controller.isIconVisible.value = !controller.isIconVisible.value;
                          },
                          contentPadding: EdgeInsets.all(15),
                          leading: Assets.png.icUaeFlag.image(width: 30),
                          title: Text(
                            myListItem[position],
                            style: TextStyle(
                              fontSize: 20,
                              color: AppColors.color212121,
                            ),
                          ),
                          trailing: Obx(() => Visibility(
                              child: Assets.png.icChecked.image(width: 30),
                            visible: controller.isIconVisible.value.isTrue,
                          )
                          ),
                          //trailing:  Assets.png.icChecked.image(width: 30),
                        ),
                      ),
                    );
                  },
                  itemCount: myListItem.length,
                ),
              )
            ],
          ),
        ),
      ),
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
    return (ChangeLanguageController).toString();
  }
}
