/// define all the Strings here which we have to localize
import '../../../utils/exports.dart';

class AppString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        englishKey: enUS,
      };

  /// define all the keys here and use it in above may as key and give value of that key

  static const String englishKey = 'en_US';
  static const String spainKey = 'es_ES';

  static const String appNameKey = "appNameKey";
  static const String loginKey = "loginKey";
  static const String somethingWentWrongKey = "somethingWentWrongKey";
  static const String inDesktopKey = "inDesktopKey";
  static const String inPhoneKey = "inPhoneKey";
  static const String inTabletKey = "inTabletKey";
  static const String loginSuccessfullyKey = "loginSuccessfullyKey";
  static const String loginDescKey = "loginDescKey";
  static const String badRequestStateKey = "badRequestStateKey";
  static const String serverNotRespondKey = "serverNotRespondKey";
  static const String internetNotConnectedKey = "internetNotConnectedKey";
  static const String poorInternetConnectionKey = "poorInternetConnectionKey";
  static const String unauthorizedKey = "unauthorizedKey";
  static const String noInterNetConnectionKey = "noInterNetConnectionKey";
  static const String cancelKey = "cancelKey";
  static const String homeKey = "homeKey";
  static const String helpKey = "helpKey";

  //Sougha Strings

  static const String txtSubTitle = "Start earning and spending Sougha \nLorem Ipsum is simply dummy text \nof the printing and typesetting";
  static const String txtWelcome = "Welcome to Sougha";
  static const String txtSignIn = "Sign In";
  static const String txtSIGNIN = "SIGN IN";
  static const String txtSIGNUP= "SIGN UP";
  static const String txtCreateAccount = "Create New Account";
  static const String txtSkip = "Skip";
  static const String txtGetStarted = "Get Started";
  static const String txtLoginSubTitle = "Just a few more detail and you can \nget started.";
  static const String txtPassword = "Password*";
  static const String txtPassHint = "------------";
  static const String txtResetPassword = "Reset your password";
  static const String txtOr = "or";
  static const String txtClose = "Close";
  static const String txtSignupHeading = "Setup your account";
  static const String txtSignup = "Sign Up";
  static const String txtSigninWithOtp = "Sign in with OTP";
  static const String txtFullname = "Full Name*";
  static const String txtMobile = "Mobile*";
  static const String txtEmail = "Email*";
  static const String txtCPass = "Confirm Password*";
  static const String txtAllowFaceId = "Allow Face ID to sign in";
  static const String txtRewardBalance = "Reward Balance";
  static const String validationEmptyCPass = "Please Enter Confirm Password";
  static const String validationPassNotMatch = "Password and Confirm Password Not Match";

}
