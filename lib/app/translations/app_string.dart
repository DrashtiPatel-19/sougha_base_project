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
}
