import '../../../utils/exports.dart';

Map<String, String> enUS = {
  ...enKeys,
  ...validationMsg,
};

Map<String, String> enKeys = {
  AppString.appNameKey: 'BaseStructure',
  AppString.loginKey: 'Login',
  AppString.somethingWentWrongKey: 'Something went wrong',
  AppString.inDesktopKey: 'In Desktop',
  AppString.inPhoneKey: 'In Phone',
  AppString.inTabletKey: 'In Tablet',
  AppString.loginSuccessfullyKey: 'Login Successful...!!',
  AppString.loginDescKey: 'Login Description',
  AppString.badRequestStateKey: 'Bad Response Format',
  AppString.serverNotRespondKey: "Server not Respond",
  AppString.internetNotConnectedKey: "Internet not connected",
  AppString.poorInternetConnectionKey: "Poor internet connection",
  AppString.unauthorizedKey: "Unauthorized",
  AppString.noInterNetConnectionKey: "No Internet Connection",
  AppString.cancelKey: "Cancel",
  AppString.homeKey: "Home",
  AppString.helpKey: "Help",

};

Map<String, String> validationMsg = {
  ValidationString.pleaseEnterEmailIdKey: "Please enter email id",
  ValidationString.pleaseEnterMobileNoKey: "Please enter mobile no",
  ValidationString.invalidEmailIdKey: "Please enter valid email id",
  ValidationString.invalidMobileNoKey: "Enter a valid mobile number",
  ValidationString.pleaseEnterPasswordKey: "Please enter password",
  ValidationString.invalidPasswordKey: "Please enter valid password",
  ValidationString.pleaseEnterConfirmPasswordKey:
      "Please enter confirm password",
  ValidationString.confirmPasswordDoesntMatchWithPassowrdKey:
      "Confirm password doesn't match with password",
  ValidationString.pleaseEnterOTPKey: "Please enter OTP",
  ValidationString.pleaseEnterValidOTPKey: "Please enter a valid OTP",
  ValidationString.pleaseEntermPINKey: "New PIN is empty",
  ValidationString.pleaseEnterValidmPINKey:
      "The mPIN should not contain sequence digits. Example: 1234, 4567, 2222, 8888, etc.",
  ValidationString.confirmPinDoNotMatch: "Entered pin is not matched",
  ValidationString.pleaseReEnterPin: "Re-enter PIN is empty",
  ValidationString.invalidPinKey: "Invalid Pin"
};
