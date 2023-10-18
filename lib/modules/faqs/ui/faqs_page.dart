import '../../../utils/exports.dart';

class FAQsPage extends BaseGetResponsiveView<FAQsController> {

  Widget buildView() {
    return SingleChildScrollView(
      child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.arrow_back_outlined , color: AppColors.color686662,),
                    SizedBox(width: 20,),
                    Text(AppString.txtFAQ, style: TextStyle(
                        color: AppColors.color212121,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'josefinsans'))
                  ],
                ),
                SizedBox(height: 20,),

                Column(
                  children: [
                    Container(
                        color: Colors.white,
                        child: Theme(
                          data: Theme.of(Get.key.currentContext!)
                              .copyWith(dividerColor: Colors.transparent),
                          child: ExpansionTile(
                            title: Text(AppString.txtDummyTitle,
                                style: TextStyle(
                                    color: AppColors.color212121,
                                    fontFamily: 'josefinsans',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20)),
                            trailing: Icon(
                              Icons.arrow_drop_down_sharp,
                              color: Colors.black,
                            ),
                            maintainState: false,
                            expandedCrossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, top: 10),
                                      child: Text(
                                        AppString.txtDummyDesc,
                                        style: TextStyle(
                                            color: AppColors.color00000080,
                                            fontSize: 16,
                                            fontFamily: 'josefinsans'),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              SizedBox(height: 20,),

                              SizedBox(height: 20,),

                            ],
                          ),
                        ),
                      ),
                    SizedBox(height: 10,),
                    Divider(
                      height: 2,
                      color: AppColors.color212121,
                      indent: 10,
                      endIndent: 10,
                    ),
                    SizedBox(height: 10,),
                    Container(
                      color: Colors.white,
                      child: Theme(
                        data: Theme.of(Get.key.currentContext!)
                            .copyWith(dividerColor: Colors.transparent),
                        child: ExpansionTile(
                          title: Text(AppString.txtDummyTitle1,
                              style: TextStyle(
                                  color: AppColors.color212121,
                                  fontFamily: 'josefinsans',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20)),
                          trailing: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.black,
                          ),
                          maintainState: false,
                          expandedCrossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 10),
                                    child: Text(
                                      AppString.txtDummyDesc,
                                      style: TextStyle(
                                          color: AppColors.color00000080,
                                          fontSize: 16,
                                          fontFamily: 'josefinsans'),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                            SizedBox(height: 20,),

                            SizedBox(height: 20,),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Divider(
                      height: 2,
                      color: AppColors.color212121,
                      indent: 10,
                      endIndent: 10,
                    ),
                    Container(
                      color: Colors.white,
                      child: Theme(
                        data: Theme.of(Get.key.currentContext!)
                            .copyWith(dividerColor: Colors.transparent),
                        child: ExpansionTile(
                          title: Text(AppString.txtDummyTitle,
                              style: TextStyle(
                                  color: AppColors.color212121,
                                  fontFamily: 'josefinsans',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20)),
                          trailing: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.black,
                          ),
                          maintainState: false,
                          expandedCrossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 10),
                                    child: Text(
                                      AppString.txtDummyDesc,
                                      style: TextStyle(
                                          color: AppColors.color00000080,
                                          fontSize: 16,
                                          fontFamily: 'josefinsans'),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                            SizedBox(height: 20,),

                            SizedBox(height: 20,),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Divider(
                      height: 2,
                      color: AppColors.color212121,
                      indent: 10,
                      endIndent: 10,
                    ),
                    SizedBox(height: 10,),

                    Container(
                      color: Colors.white,
                      child: Theme(
                        data: Theme.of(Get.key.currentContext!)
                            .copyWith(dividerColor: Colors.transparent),
                        child: ExpansionTile(
                          title: Text(AppString.txtDummyTitle1,
                              style: TextStyle(
                                  color: AppColors.color212121,
                                  fontFamily: 'josefinsans',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20)),
                          trailing: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.black,
                          ),
                          maintainState: false,
                          expandedCrossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 10),
                                    child: Text(
                                      AppString.txtDummyDesc,
                                      style: TextStyle(
                                          color: AppColors.color00000080,
                                          fontSize: 16,
                                          fontFamily: 'josefinsans'),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                            SizedBox(height: 20,),

                            SizedBox(height: 20,),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Divider(
                      height: 2,
                      color: AppColors.color212121,
                      indent: 10,
                      endIndent: 10,
                    ),
                    Container(
                      color: Colors.white,
                      child: Theme(
                        data: Theme.of(Get.key.currentContext!)
                            .copyWith(dividerColor: Colors.transparent),
                        child: ExpansionTile(
                          title: Text(AppString.txtDummyTitle,
                              style: TextStyle(
                                  color: AppColors.color212121,
                                  fontFamily: 'josefinsans',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20)),
                          trailing: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.black,
                          ),
                          maintainState: false,
                          expandedCrossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 10),
                                    child: Text(
                                      AppString.txtDummyDesc,
                                      style: TextStyle(
                                          color: AppColors.color00000080,
                                          fontSize: 16,
                                          fontFamily: 'josefinsans'),
                                    ),
                                  ),

                                ],
                              ),
                            ),

                            SizedBox(height: 20,),

                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: AppColors.color212121,
                      indent: 10,
                      endIndent: 10,
                    ),
                  ],
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
    return (FAQsController).toString();
  }
}
