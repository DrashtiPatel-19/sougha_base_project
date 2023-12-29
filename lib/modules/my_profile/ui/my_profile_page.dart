import 'package:flutter_base/modules/my_profile/ui/radio_widget.dart';

import '../../../utils/exports.dart';

class MyProfilePage extends BaseGetResponsiveView<MyProfileController> {

  DateTime? pickedDate;

  int selectedOption = 1;
  String dropdownNatinality = 'Indian';
  String dropdownCountry = 'India';
  String dropdownCity = 'Ahmedabad';

  // List of items in our dropdown menu
  var itemsNationality = [
    'Indian',
    'American',
    'Canadian',
    'Australian',
  ];

  var itemsCountry = [
    'India',
    'America',
    'Canada',
    'Australia',
  ];

  var itemsCity = [
    'Ahmedabad',
    'Mumbai',
    'Kolkata',
    'Delhi',
  ];

  ValueNotifier<Gender> _selectedItem = new ValueNotifier<Gender>(Gender.male);

  Widget buildView() {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  InkWell(
                    child: Icon(
                      Icons.arrow_back_outlined,color: AppColors.color686662,
                    ),
                    onTap: () {
                      Get.back();
                    },
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    AppString.txtProfileDetails,
                    style: TextStyle(
                        color: AppColors.color212121,
                        fontFamily: 'josefinsans',
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  )
                ],
              ),
              SizedBox(
                height: 20,
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
                          borderRadius: BorderRadius.all(Radius.circular(150))),
                      padding: EdgeInsets.all(5),
                    ),
                    Positioned(
                      bottom: -5.0,
                      right: 0.0,
                      child: IconButton(
                        icon: Assets.png.icCamera.image(),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                AppString.txtProfilePicture,
                style: TextStyle(
                    color: AppColors.color212121,
                    fontFamily: 'josefinsans',
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  AppString.txtPersonalDetails,
                  style: TextStyle(
                      color: AppColors.color212121,
                      fontFamily: 'josefinsans',
                      fontWeight: FontWeight.w700,
                      fontSize: 22),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        return validateUsername(value!);
                      },
                      cursorColor: AppColors.color686662,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: AppColors.colorFocusBorder)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: AppColors.colorFocusBorder)),
                        label: Text(
                          AppString.txtFullname,
                          style: TextStyle(
                              color: AppColors.color212121,
                              fontFamily: 'josefinsans',
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: controller.dateController.value,
                      validator: (value) {
                        return validateUsername(value!);
                      },
                      cursorColor: AppColors.color686662,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: AppColors.colorFocusBorder)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: AppColors.colorFocusBorder)),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.calendar_today_rounded,
                            size: 20,
                            color: AppColors.color686662,
                          ),
                          onPressed: () {
                            openDatePickerDialog();
                          },
                        ),
                        label: Text(
                          AppString.txtDob,
                          style: TextStyle(
                              color: AppColors.color212121,
                              fontFamily: 'josefinsans',
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),



                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            AppString.txtGender,
                            style: TextStyle(
                                color: AppColors.color212121,
                                fontFamily: 'josefinsans',
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                        ),

                        //OrderTypeButton(value: "g_male", title: "Male"),
                        //OrderTypeButton(value: "g_female", title: "Female"),


                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            AppString.txtNationality,
                            style: TextStyle(
                                color: AppColors.color212121,
                                fontFamily: 'josefinsans',
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(Get.key.currentContext!).size.width / 2,
                          child: DropdownButton(
                            value: dropdownNatinality,
                            isExpanded: true,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            style: TextStyle(
                                color: AppColors.color212121,
                                fontFamily: 'josefinsans',
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                            items: itemsNationality.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              /*setState(() {
                                dropdownvalue = newValue!;
                              });*/
                            },
                          ),
                        ),
                      ],
                    ),
                    TextFormField(
                      validator: (value) {
                        return validateEmail(value!);
                      },
                      cursorColor: AppColors.color686662,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: AppColors.colorFocusBorder)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: AppColors.colorFocusBorder)),
                        label: Text(
                          AppString.txtEmail,
                          style: TextStyle(
                              color: AppColors.color212121,
                              fontFamily: 'josefinsans',
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: (value) {
                        return validateContact(value!);
                      },
                      cursorColor: AppColors.color686662,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: AppColors.colorFocusBorder)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: AppColors.colorFocusBorder)),
                        label: Text(
                          AppString.txtMobile,
                          style: TextStyle(
                              color: AppColors.color212121,
                              fontFamily: 'josefinsans',
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  AppString.txtAddressDetails,
                  style: TextStyle(
                      color: AppColors.color212121,
                      fontFamily: 'josefinsans',
                      fontWeight: FontWeight.w700,
                      fontSize: 22),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      AppString.txtCountry,
                      style: TextStyle(
                          color: AppColors.color212121,
                          fontFamily: 'josefinsans',
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(Get.key.currentContext!).size.width / 2,
                    child: DropdownButton(
                      value: dropdownCountry,
                      isExpanded: true,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      style: TextStyle(
                          color: AppColors.color212121,
                          fontFamily: 'josefinsans',
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                      items: itemsCountry.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        /*setState(() {
                                dropdownvalue = newValue!;
                              });*/
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      AppString.txtCity,
                      style: TextStyle(
                          color: AppColors.color212121,
                          fontFamily: 'josefinsans',
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(Get.key.currentContext!).size.width / 2,
                    child: DropdownButton(
                      value: dropdownCity,
                      isExpanded: true,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      style: TextStyle(
                          color: AppColors.color212121,
                          fontFamily: 'josefinsans',
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                      items: itemsCity.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        /*setState(() {
                                dropdownvalue = newValue!;
                              });*/
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                  },
                  style: ButtonStyle(
                      side: MaterialStatePropertyAll(
                        BorderSide(
                          color: AppColors.color686662,
                          style: BorderStyle.solid,
                          strokeAlign: 1,
                          width: Dimens.borderWidth1 / 2,
                        ),
                      ),
                      minimumSize: MaterialStatePropertyAll(
                        const Size.fromHeight(50),
                      ),
                      shape:
                      MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                      backgroundColor:
                      MaterialStatePropertyAll(AppColors.color686662)),
                  child: const Text(
                    AppString.txtSaveChanges,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'josefinsans',
                        fontSize: 18),
                  )),
              SizedBox(
                height: 20,
              ),

            ],
          ),
        ),
      ),
    );
  }

  Future<void> openDatePickerDialog() async {
    DateTime? datePickerDialoag = await showDatePicker(
        context: Get.key.currentContext!,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2080));

    if (datePickerDialoag != null) {
      pickedDate = datePickerDialoag;
      controller.dateController.value.text =
          "${datePickerDialoag.toLocal()}".split(' ')[0];
    }
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
    return (MyProfileController).toString();
  }
}
