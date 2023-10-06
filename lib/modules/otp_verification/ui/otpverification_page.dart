import 'package:flutter_base/modules/otp_verification/ui/start_timer.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import '../../../utils/exports.dart';
import '../../common/common_header.dart';

class OtpVerificationPage
    extends BaseGetResponsiveView<OtpVerificationController> {
  OtpVerificationPage({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formkey = GlobalKey();


  void signinWithOtpSubmitClick() {
    if (_formkey.currentState!.validate()) {}
  }

  Widget buildView() {
    StartTimer();
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CommonHeader(),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    AppString.txtOtpVerification,
                    style: TextStyle(
                        color: AppColors.color212121,
                        fontFamily: 'josefinsans',
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    AppString.txtOtpVerificationSub,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: (AppColors.color212121),
                        fontFamily: 'josefinsans',
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  OtpTextField(
                    numberOfFields: 4,
                    borderWidth: 3,
                    autoFocus: true,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    keyboardType: TextInputType.number,
                    borderColor: AppColors.color686662,
                    cursorColor: AppColors.color686662,
                    focusedBorderColor: AppColors.color686662,
                  ),
                  SizedBox(
                    height: 50,
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
                        AppString.txtContinue,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'josefinsans',
                            fontSize: 18),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppString.txtDontReceivedOtp,
                        style: TextStyle(
                            color: (AppColors.color212121),
                            fontFamily: 'josefinsans',
                            fontSize: 16),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        child: Text(
                          AppString.txtResendOtp,
                          style: TextStyle(
                              color: (AppColors.color87744E),
                              fontFamily: 'josefinsans',
                              decoration: TextDecoration.underline,
                              fontSize: 14),
                        ),
                        onTap: () {
                          var startTimer = StartTimer();
                         // startTimer
                        },
                      )
                    ],
                  )
                ],
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
    return (OtpVerificationController).toString();
  }
}
