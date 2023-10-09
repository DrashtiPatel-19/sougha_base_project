import '../../../utils/exports.dart';

class ChangePasswordConfirmationPage
    extends BaseGetResponsiveView<ChangePasswordConfirmationController> {
  ChangePasswordConfirmationPage({Key? key}) : super(key: key);

  Widget buildView() {
    return Container(
        width: double.infinity,
        height: double.infinity,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 380,
                    height: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomLeft,
                          stops: const [
                            0.1,
                            0.7,
                            0.0
                          ],
                          colors: [
                            AppColors.colorC4C0BA,
                            AppColors.colorC4C0BA,
                            AppColors.colorC4C0BA,
                          ]),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Assets.png.icVerificationImage.image(width: 80),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          AppString.txtCongratulations,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'josefinsans',
                              fontWeight: FontWeight.w400,
                              fontSize: 24),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          AppString.txtChangePassSuccessfullMessage,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'josefinsans',
                              fontWeight: FontWeight.w400,
                              fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30.0, right: 20, left: 20),
                          child: ElevatedButton(
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
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  )),
                                  backgroundColor: MaterialStatePropertyAll(
                                      AppColors.color686662)),
                              onPressed: () {
                                controller.callContinueClick();
                              },
                              child: Text(
                                AppString.txtContinue,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'josefinsans',
                                    fontSize: 18),
                              )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
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
    return (ChangePasswordConfirmationController).toString();
  }
}
