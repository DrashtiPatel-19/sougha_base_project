import 'package:flutter_base/modules/common/common_header.dart';
import '../../../utils/exports.dart';

class LoginPage extends BaseGetResponsiveView<LoginController> {
  LoginPage({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formkey = GlobalKey();
  void loginSubmitClick(){
      if(_formkey.currentState!.validate()){

      }
  }

  Widget buildView() {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CommonHeader(),
            Form(
              key: _formkey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      AppString.txtSIGNIN,
                      style: TextStyle(
                          color: AppColors.color212121,
                          fontFamily: 'josefinsans',
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      AppString.txtLoginSubTitle,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: (AppColors.color212121),
                          fontFamily: 'josefinsans',
                          fontSize: 16),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: controller.emailController.value,
                        validator: (value){
                          return validateEmail(value!);
                        },
                        cursorColor: AppColors.color686662,

                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.color686662)),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColors.color686662),
                          ),
                          label: Text(
                            AppString.txtEmail,
                            style: TextStyle(
                                color: AppColors.color212121,
                                fontFamily: 'josefinsans',
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Obx(() => TextFormField(
                      controller: controller.passwordController.value,

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
                          AppString.txtPassword,
                          style: TextStyle(
                              color: AppColors.color212121,
                              fontFamily: 'josefinsans',
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                    )),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          AppString.txtResetPassword,
                          style: TextStyle(
                              color: AppColors.color87744E,
                              fontFamily: 'josefinsans'),
                          textAlign: TextAlign.end,
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    ElevatedButton(
                        onPressed: () {
                          loginSubmitClick();
                          controller.callLoginApi();
                          //SharedPref.setValue(PrefsKey.keyEmail, controller.emailController.value);
                         //print("Email is : " + controller.emailController.value.toString());
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
                          AppString.txtSignIn,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'josefinsans',
                              fontSize: 18),
                        )),
                    SizedBox(height: 20,),
                    Text(
                      AppString.txtOr,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'josefinsans',
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 20,),
                    ElevatedButton(
                      onPressed: () {
                        controller.signInOtpClick();
                        SharedPref.setValue(PrefsKey.keyEmail, true);
                        //print(SharedPref.setValue(PrefsKey.keyEmail, true));

                      },
                      child: Text(
                        AppString.txtSigninWithOtp,
                        style: TextStyle(
                            color: AppColors.color212121,
                            fontFamily: 'josefinsans',
                            fontSize: 18),
                      ),
                      style: OutlinedButton.styleFrom(
                          minimumSize: const Size.fromHeight(50),
                          side: BorderSide(
                            color: AppColors.color686662,
                            style: BorderStyle.solid,
                            strokeAlign: 1,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                    )

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
    return (LoginController).toString();
  }
}
