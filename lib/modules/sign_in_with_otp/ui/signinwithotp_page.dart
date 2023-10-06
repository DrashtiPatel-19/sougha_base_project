import '../../../utils/exports.dart';
import '../../common/common_header.dart';

class SignInWithOtpPage extends BaseGetResponsiveView<SigninWithOtpController> {
  SignInWithOtpPage({Key? key}) : super(key: key);
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
            Form(
              key: _formkey,
              autovalidateMode: AutovalidateMode.always,
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
                        validator: (value) {
                          return validateEmail(value!);
                        },
                        controller: controller.emailController.value,
                        cursorColor: AppColors.color686662,
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
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          signinWithOtpSubmitClick();
                          controller.continueBtnClick();
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
                            backgroundColor: MaterialStatePropertyAll(
                                AppColors.color686662)),
                        child: const Text(
                          AppString.txtContinue,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'josefinsans',
                              fontSize: 18),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      child: Text(
                        AppString.txtSigninWithMobile,
                        style: TextStyle(
                            color: AppColors.color87744E,
                            fontFamily: 'josefinsans'),
                        textAlign: TextAlign.end,
                      ),
                      onTap: () {

                      },
                    ),
                    /*  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                      ],
                    ),
*/
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
    return (SigninWithOtpController).toString();
  }
}
