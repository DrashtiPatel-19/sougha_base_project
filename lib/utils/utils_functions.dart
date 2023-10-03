// ignore: depend_on_referenced_packages
import 'package:async/async.dart' show FutureGroup;

import 'exports.dart';

///this file helps to define all the common function

/// hide Keyboard
void hideKeyboard() {
  FocusManager.instance.primaryFocus?.unfocus();
}

//----------------------------------------------------------------------

/// hide status bar
void showStatusBar() async {
  await SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom],
  );
}
//----------------------------------------------------------------------

/// show status bar
void hideStatusBar() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
}
//----------------------------------------------------------------------

///go back
///
/// helps to go back to previous page
void goBack({dynamic result}) {
  if (Get.isSnackbarOpen) {
    Get.closeAllSnackbars();
  } else {
    Get.back(result: result);
  }
}

//-------------------------------------------------------------------------------

///loader view
///
/// [value] while value comes true then loader will be visible else hide
void showLoader({required bool value, String? message}) {
  if (value) {
    // show loader here
    EasyLoading.show(status: message);
  } else {
    EasyLoading.dismiss(animation: true);
    // hide loader here
  }
}

//-------------------------------------------------------------------------------

/// snackBar
///
/// [message] display message
/// [buttonText] String for button
/// [duration] Duration of SnackBar display
/// [isDismissible] value for dismiss snackbar
/// [icon] display icon before message
void showSnackBar(String message,
    {SvgGenImage? icon,
    String buttonText = "",
    Function()? onButtonClick,
    Duration? duration,
    bool? isDismissible}) {
  Get.snackbar(
    "",
    "",
    colorText: AppColors.primary,
    backgroundColor: AppColors.secondary,
    snackPosition: SnackPosition.BOTTOM,
    snackStyle: SnackStyle.FLOATING,
    margin: const EdgeInsets.only(
        left: Dimens.padding30,
        right: Dimens.padding30,
        bottom: Dimens.padding30),
    duration: duration ?? const Duration(seconds: 3),
    isDismissible: isDismissible ?? true,
    borderRadius: Dimens.radius10,
    maxWidth: Get.width,
    mainButton: buttonText.isNotNullOrEmpty
        ? TextButton(
            onPressed: onButtonClick,
            child: CustomTextLabelWidget(
                label: buttonText,
                style: AppStyles.textNormal.copyWith(color: AppColors.primary)),
          )
        : null,
    messageText: Container(),
    titleText: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon != null
            ? Padding(
                padding: const EdgeInsets.only(right: Dimens.padding8),
                child: icon.svg(
                  height: Dimens.iconSize16,
                  width: Dimens.iconSize16,
                ),
              )
            : Container(),
        Flexible(
          child: CustomTextLabelWidget(
            textAlign: icon != null ? TextAlign.left : TextAlign.center,
            maxLines: 2,
            label: message,
            style: AppStyles.textNormal.copyWith(fontSize: Dimens.fontSize14),
          ),
        )
      ],
    ),
  );
}

showAlertMessage(
  String message, {
  Function()? onOkClicked,
  Function()? onCancelClicked,
  String? okBtnTitle,
  String? cancelBtnTitle,
  String? title,
  TextStyle? titleStyle,
  TextStyle? messageStyle,
  bool barrierDismissible = true,
}) {
  Get.dialog(
      CustomDialogWidget(
        titleStyle: titleStyle ?? AppStyles.textMedium,
        title: title ?? "",
        message: message,
        cancelBtnTitle: cancelBtnTitle,
        onCancelClicked: onCancelClicked,
        okBtnTitle: okBtnTitle,
        onOkClicked: onOkClicked,
      ),
      barrierDismissible: barrierDismissible);
}

///change the language
void changeLocale(Locale locale) {
  // Add one more condition to check that the provided locale is valid for our app or not
  if (locale.toLanguageTag() != SharedPref.getString(PrefsKey.currentLocale)) {
    SharedPref.setValue(PrefsKey.currentLocale, locale.toLanguageTag());
    Get.updateLocale(locale);
  }
}

///perform async tasks using "FutureGroup"
performAsyncTask(List<dynamic> functionsList, {Function? success}) async {
  FutureGroup futureGroup = FutureGroup();
  for (var function in functionsList) {
    futureGroup.add(function);
  }
  futureGroup.close();
  await futureGroup.future.then((value) {
    success?.call();
  });


  bool isControllerRegister<T>(){
    return Get.isRegistered<T>(
        tag: (T).toString());
  }
}
