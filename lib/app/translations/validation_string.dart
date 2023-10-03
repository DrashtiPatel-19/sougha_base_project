import '../../../utils/exports.dart';

class ValidationString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUS,
      };

  static const String pleaseEnterEmailIdKey = "pleaseEnterEmailIdKey";
  static const String pleaseEnterMobileNoKey = "pleaseEnterMobileNoKey";
  static const String invalidEmailIdKey = "invalidEmailIdKey";
  static const String invalidMobileNoKey = "invalidMobileNoKey";
  static const String pleaseEnterPasswordKey = "pleaseEnterPasswordKey";
  static const String passwordShouldHaveKey = "passwordShouldHaveKey";
  static const String pleaseEnterConfirmPasswordKey =
      "pleaseEnterConfirmPasswordKey";
  static const String confirmPasswordDoesntMatchWithPassowrdKey =
      "confirmPasswordDoesntMatchWithPassowrdKey";
  static const String pleaseEnterOTPKey = "pleaseEnterOTPKey";
  static const String pleaseEnterValidOTPKey = "pleaseEnterValidOTPKey";
  static const String pleaseEntermPINKey = "pleaseEntermPINKey";
  static const String pleaseReEnterPin = "pleaseReEnterPinKey";
  static const String pleaseEnterValidmPINKey = "pleaseEnterValidmPINKey";
  static const String confirmPinDoNotMatch = "confirmPinDoNotMatchKey";
  static const String invalidPinKey = "invalidPinKey";
  static const String invalidPasswordKey = "invalidPasswordKey";
}
