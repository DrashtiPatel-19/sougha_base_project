import '../../../utils/exports.dart';

class SignInWithOtpPage extends BaseGetResponsiveView<SigninWithOtpController> {
  SignInWithOtpPage({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formkey = GlobalKey();
  void loginSubmitClick(){
      if(_formkey.currentState!.validate()){

      }
  }

  Widget buildView() {
    return Container(

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
