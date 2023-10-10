import '../../../utils/exports.dart';
import '../../common/common_header.dart';

class OtpVerificationPage
    extends BaseGetResponsiveView<OtpVerificationController> {
  OtpVerificationPage({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formkey = GlobalKey();
  final f1 = FocusNode();
  final f2 = FocusNode();
  final f3 = FocusNode();
  final f4 = FocusNode();

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
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: AspectRatio(
                          aspectRatio: 0.7,
                          child: TextField(
                            autofocus: true,
                            textInputAction: TextInputAction.next,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            controller: controller.first.value,
                            maxLength: 1,
                            focusNode: f1,
                            enableInteractiveSelection: false,
                            onChanged: (value) {
                              if(value.length > 0){
                                FocusScope.of(Get.key.currentContext!).requestFocus(f2);
                              }
                            },

                            cursorColor: AppColors.color686662,
                            decoration: InputDecoration(
                              counter: Offstage(),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2, color: AppColors.color686662),
                                  borderRadius: BorderRadius.circular(12)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2, color: AppColors.color686662),
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: AspectRatio(
                          aspectRatio: 0.7,
                          child: TextField(
                            autofocus: true,
                            textInputAction: TextInputAction.next,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            focusNode: f2,
                            enableInteractiveSelection: false,

                            onChanged: (value) {
                              if(value.length > 0){
                                FocusScope.of(Get.key.currentContext!).requestFocus(f3);
                              }
                            },
                            controller: controller.second.value,
                            maxLength: 1,
                            cursorColor: AppColors.color686662,
                            decoration: InputDecoration(
                              counter: Offstage(),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2, color: AppColors.color686662),
                                  borderRadius: BorderRadius.circular(12)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2, color: AppColors.color686662),
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: AspectRatio(
                          aspectRatio: 0.7,
                          child: TextField(
                            autofocus: true,
                            textInputAction: TextInputAction.next,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            controller: controller.third.value,
                            maxLength: 1,
                            enableInteractiveSelection: false,

                            focusNode: f3,
                            onChanged: (value) {
                              if(value.length > 0){
                                FocusScope.of(Get.key.currentContext!).requestFocus(f4);
                              }
                            },
                            cursorColor: AppColors.color686662,
                            decoration: InputDecoration(
                              counter: Offstage(),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2, color: AppColors.color686662),
                                  borderRadius: BorderRadius.circular(12)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2, color: AppColors.color686662),
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: AspectRatio(
                          aspectRatio: 0.7,
                          child: TextField(
                            autofocus: true,
                            textInputAction: TextInputAction.done,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            controller: controller.fourth.value,
                            maxLength: 1,
                            focusNode: f4,
                            enableInteractiveSelection: false,
                            onChanged: (value) {
                              FocusScope.of(Get.key.currentContext!).requestFocus(new FocusNode());
                            },
                            cursorColor: AppColors.color686662,
                            decoration: InputDecoration(
                              counter: Offstage(),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2, color: AppColors.color686662),
                                  borderRadius: BorderRadius.circular(12)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2, color: AppColors.color686662),
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        controller.checkOtp();
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
