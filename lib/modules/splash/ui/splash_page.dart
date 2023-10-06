import '../../../utils/exports.dart';

class SplashPage extends BaseGetResponsiveView<SplashController> {
  SplashPage({Key? key}) : super(key: key);

  Widget buildView() {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            Center(
              child: Stack(
                children: [
                  Assets.png.icMainLogo.image(width: 230)
                ],
              ),
            ),
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
    return (SplashController).toString();
  }
}
