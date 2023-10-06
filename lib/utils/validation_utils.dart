import 'exports.dart';

bool isEmailValidate(String email) {
  return email.contains(RegExpressions.email) ? true : false;
}

bool isEmptyField(String? fieldText) {
  return fieldText.isNullOrEmpty;
}

bool isPasswordValidate(String password) {
  return password.contains(RegExpressions.password) ? true : false;
}

bool isContactNumberValidate(String mobile) {
  return mobile.contains(RegExpressions.phoneNumber) ? true : false;
}

String? validateEmail(String str) {
  if (str.isEmpty) {
    return ValidationString.pleaseEnterEmailIdKey.tr;
  } else if (!isEmailValidate(str)) {
    return ValidationString.invalidEmailIdKey.tr;
  } else {
    return null;
  }
}

String? validateContact(String str) {
  if (str.isEmpty) {
    return ValidationString.pleaseEnterMobileNoKey.tr;
  } else if (!isContactNumberValidate(str)) {
    return ValidationString.invalidMobileNoKey.tr;
  } else {
    return null;
  }
}

String? validatePassword(String str) {
  if (str.isEmpty) {
    return ValidationString.pleaseEnterPasswordKey.tr;
  } else if (!RegExpressions.password.hasMatch(str)) {
    return ValidationString.invalidPasswordKey.tr;
  } else {
    return null;
  }
}

String? validateUsername(String str) {
  if (str.isEmpty) {
    return ValidationString.pleaseEnterUsernameKey.tr;
  } else {
    return null;
  }
}
