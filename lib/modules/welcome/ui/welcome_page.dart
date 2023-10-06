import '../../../utils/exports.dart';

class WelcomePage extends BaseGetResponsiveView<WelcomeController> {
  WelcomePage({Key? key}) : super(key: key);

  Widget buildView() {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 10),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.close,
                  color: AppColors.color686662,
                )),
          )
        ],
      ),
      body: Container(
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
                        const Padding(
                          padding: EdgeInsets.only(top: 24.0),
                          child: Text(
                            AppString.txtWelcome,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'josefinsans',
                                fontWeight: FontWeight.w400,
                                fontSize: 20),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 16.0),
                          child: Text(
                            AppString.txtSubTitle,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'josefinsans',
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 50.0, right: 20, left: 20),
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
                                    AppColors.color686662
                                )
                              ),
                              onPressed: () {
                                controller.signinClick();
                              },
                              child: Text(
                                AppString.txtSignIn,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'josefinsans',
                                    fontSize: 16),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, right: 20, left: 20),
                          child: ElevatedButton(
                              onPressed: () {
                                controller.signupClick();
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  minimumSize: const Size.fromHeight(50),
                                  backgroundColor: AppColors.colorE1DDD9),

                              child: Text(
                                AppString.txtCreateAccount,
                                style: TextStyle(
                                    color: AppColors.color686662,
                                    fontFamily: 'josefinsans',
                                    fontSize: 16),
                              )),
                        )
                      ],
                    ),
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
    return (WelcomeController).toString();
  }
}
