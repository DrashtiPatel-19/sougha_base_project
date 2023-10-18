import '../../../utils/exports.dart';

/// Constants are must be define here
/// Constants which don't need Localization
/// the Constants which depends on Localization should be defined in AppStrings Class
abstract class AppConstant {
  static const int splashTime = 2;
  static const double maxWidth = 400;
  static const int encryptionLength = 16;
  static const String android = "android";
  static const String ios = "ios";

  static const Locale englishLocale = Locale('en', 'US');
  static const Locale spainLocale = Locale('es', 'ES');
}

class DateConstants {
  static const String apiDateFormat = "yyyy-MM-dd HH:mm:ss";
  static const String dateFormat = "yyyy-MM-dd";
  static const String displayDateFormat = "dd MMMM yyyy";
  static const String commonDateFormat = "dd MMM yyyy";
  static const String commonTimeFormat = "hh:mm a";
  static const String notificationDateFormat = "dd/MM";
  static const String notificationTimeFormat = "H:mm";
  static const String isoDateFormat = "yyyy-MM-ddTHH:mm:ss.SSS";
  static const String enterNotificationDateFormat = "dd/M/yyyy";
}

enum Gender {
  male,
  female,
}