import 'package:flutter_base/modules/signup/ui/custom_switch.dart';
import '../../../utils/exports.dart';

class SignupPage extends BaseGetResponsiveView<SignupController> {
  SignupPage({Key? key}) : super(key: key);

  bool changeState = true;
  final GlobalKey<FormState> _formkey = GlobalKey();
  FocusNode name = FocusNode();
  FocusNode email = FocusNode();
  FocusNode mobile = FocusNode();
  FocusNode password = FocusNode();
  FocusNode cPassword = FocusNode();

  void signupClick() {
    if (_formkey.currentState!.validate()) {}
  }

  Widget buildView() {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        leading: InkWell(
          child: Icon(
            Icons.arrow_back_outlined,
            color: AppColors.color686662,
          ),
          onTap: () {
            //Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 10),
            child: InkWell(
              onTap: () {},
              child: Text(
                AppString.txtClose,
                style: TextStyle(
                    color: AppColors.color686662,
                    fontSize: 18,
                    fontFamily: 'josefinsans'),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text(
                AppString.txtSignupHeading,
                style: TextStyle(
                    color: AppColors.color212121,
                    fontFamily: 'josefinsans',
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14.0),
              child: Text(
                AppString.txtLoginSubTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.color212121,
                    fontFamily: 'josefinsans',
                    fontSize: 20),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(26.0),
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                key: _formkey,
                child: Column(
                  children: [
                    TextFormField(
                      focusNode: name,
                        controller: controller.nameController.value,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          return validateUsername(value!);
                        },
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.color686662)),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.color686662),
                          ),
                          label: Text(
                            AppString.txtFullname,
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
                    TextFormField(
                      focusNode: mobile,
                      controller: controller.mobileController.value,
                      validator: (phone) {
                        return validateContact(phone!);
                      },
                      maxLength: 10,

                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        errorText: null,
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.colorFocusBorder)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.colorFocusBorder)),
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
                    const SizedBox(
                      height: 0,
                    ),
                    TextFormField(
                        focusNode: email,
                        controller: controller.emailController.value,
                        validator: (email) {
                          return validateEmail(email!);
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.color686662)),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.color686662),
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
                          focusNode: password,
                          controller: controller.passwordController.value,
                          validator: (password) {
                            return validatePassword(password!);
                          },
                          obscureText: controller.isPasswordHidden.value,
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
                      height: 20,
                    ),
                    Obx(() => TextFormField(
                          focusNode: cPassword,
                          obscureText: controller.isConfirmPasswordHidden.value,
                          validator: (cPass){
                            if(cPass!.isEmpty){
                              return AppString.validationEmptyCPass;
                            }
                            if(cPass != controller.passwordController.value){
                              return AppString.validationPassNotMatch;
                            }
                          },
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
                                controller.isConfirmPasswordHidden.value
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.black45,
                              ),
                              onPressed: () {
                                controller.isConfirmPasswordHidden.value =
                                    !controller.isConfirmPasswordHidden.value;
                              },
                            ),
                            label: Text(
                              AppString.txtCPass,
                              style: TextStyle(
                                  color: AppColors.color212121,
                                  fontFamily: 'josefinsans',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: Text(
                                AppString.txtAllowFaceId,
                                style: TextStyle(
                                    color: AppColors.color212121,
                                    fontFamily: 'josefinsans'),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            StyledSwitch(
                              onToggled: (isToggled) {},
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                              onPressed: () {},
                              constraints: BoxConstraints(),
                              padding: EdgeInsets.all(0.0),
                              icon: Assets.svgs.icCheck.svg()),
                          Padding(
                            padding: const EdgeInsets.only(left: 6.0),
                            child: RichText(
                                text: TextSpan(
                                    text:
                                        "By signing up, you are agreeing that you are 18+ \n",
                                    style: TextStyle(
                                        color: AppColors.color212121,
                                        fontFamily: 'josefinsans',
                                        fontSize: 15),
                                    children: [
                                  TextSpan(
                                      text: "and accept Soughah Reward's "),
                                  TextSpan(
                                      text: "Terms of Use.",
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: AppColors.color87744E))
                                ])),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
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
                            backgroundColor: MaterialStatePropertyAll(
                                AppColors.color686662)),
                        onPressed: () {
                          signupClick();
                        },
                        child: Text(
                          AppString.txtSignup,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'josefinsans',
                              fontSize: 16),
                        )),
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
    return (SignupController).toString();
  }
}
