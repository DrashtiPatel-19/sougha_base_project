import 'package:flutter_base/modules/common/common_header.dart';

import '../../../utils/exports.dart';

class ChangePasswordPage
    extends BaseGetResponsiveView<ChangePasswordController> {
  ChangePasswordPage({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formkey = GlobalKey();


  void signinWithOtpSubmitClick() {
    if (_formkey.currentState!.validate()) {}
  }

  Widget buildView() {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CommonHeader(),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          AppString.txtEnterNewPass,
                          style: TextStyle(
                              color: (AppColors.color212121),
                              fontFamily: 'josefinsans',
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Obx(() => TextFormField(
                      controller: controller.passwordController.value,

                      validator: (value) {
                        return validatePassword(value!);
                      },
                      onChanged: (password) => controller.onPasswordChanged(password),
                      cursorColor: AppColors.color686662,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.colorFocusBorder)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.colorFocusBorder)),
                        suffixIcon: IconButton(
                          icon: Icon(
                            controller.isPasswordHidden.value
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.black45,
                          ),
                          onPressed: () {
                            controller.isPasswordHidden.value =
                            !controller.isPasswordHidden.value;
                          },
                        ),
                        label: Text(
                          AppString.txtNewPass,
                          style: TextStyle(
                              color: AppColors.color212121,
                              fontFamily: 'josefinsans',
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                    )),
                    SizedBox(height: 10,),
                    Obx(() => TextFormField(
                      controller: controller.cPasswordController.value,

                      validator: (value) {
                        return validatePassword(value!);
                      },
                      cursorColor: AppColors.color686662,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.colorFocusBorder)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.colorFocusBorder)),
                        suffixIcon: IconButton(
                          icon: Icon(
                            controller.isCpasswordHidden.value
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.black45,
                          ),
                          onPressed: () {
                            controller.isCpasswordHidden.value =
                            !controller.isCpasswordHidden.value;
                          },
                        ),
                        label: Text(
                          AppString.txtConfirmPass,
                          style: TextStyle(
                              color: AppColors.color212121,
                              fontFamily: 'josefinsans',
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                    )),
                    SizedBox(height: 40,),
                    ElevatedButton(
                        onPressed: () {
                            controller.createPasswordClick();
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
                          AppString.txtCreatePass,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'josefinsans',
                              fontSize: 17),
                        )),
                    SizedBox(height: 40,),
                    Row(
                      children: [
                        AnimatedContainer(
                          duration: Duration(milliseconds: 500),
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              color: controller.isPasswordEightCharacters ?  Colors.green : Colors.transparent,
                              borderRadius: BorderRadius.circular(50),
                              border: controller.isPasswordEightCharacters ? Border.all(color: Colors.transparent) :
                  Border.all(color: Colors.grey.shade400),
                          ),
                          child: Center(child: Icon(Icons.check, color: Colors.white, size: 15,),),
                        ),
                        SizedBox(width: 10,),
                        Text("Contains at least 8 characters" , style: TextStyle(
                            color: AppColors.color212121,
                            fontFamily: 'josefinsans',
                            fontWeight: FontWeight.w500,
                            fontSize: 16),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        AnimatedContainer(
                          duration: Duration(milliseconds: 500),
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              color: controller.isLowercase ?  Colors.green : Colors.transparent,
                              border: controller.isLowercase ? Border.all(color: Colors.transparent) :
                              Border.all(color: Colors.grey.shade400),
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: Center(child: Icon(Icons.check, color: Colors.white, size: 15,),),
                        ),
                        SizedBox(width: 10,),
                        Text("Contains at least 1 Lower case" , style: TextStyle(
                            color: AppColors.color212121,
                            fontFamily: 'josefinsans',
                            fontWeight: FontWeight.w500,
                            fontSize: 16),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        AnimatedContainer(
                          duration: Duration(milliseconds: 500),
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              color: controller.hasPasswordOneNumber ?  Colors.green : Colors.transparent,
                              border: controller.hasPasswordOneNumber ? Border.all(color: Colors.transparent) :
                              Border.all(color: Colors.grey.shade400),
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: Center(child: Icon(Icons.check, color: Colors.white, size: 15,),),
                        ),
                        SizedBox(width: 10,),
                        Text("Contains at least 1 number" , style: TextStyle(
                            color: AppColors.color212121,
                            fontFamily: 'josefinsans',
                            fontWeight: FontWeight.w500,
                            fontSize: 16))
                      ],
                    ),

                  ],
                ),
              ),
            )
          ],
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
    return (ChangePasswordController).toString();
  }
}
