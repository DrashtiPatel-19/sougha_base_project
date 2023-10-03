
import '../../utils/exports.dart';

/// Use this MainController class to handle all the Global things
/// (to handle state of MyApp Widget or to store some App Level things here.)
class MainController extends GetxController {
  late final AndroidDeviceInfo androidInfo;
  late final IosDeviceInfo iosDeviceInfo;
  late final PackageInfo packageInfo;

  /// This method is only for Android to get UUID
  /// using mobile number and unique device id.
  final MethodChannel uuidMethodChannel = const MethodChannel(
    'UUID.MethodChannel',
  );

  /// Method channel to be used for FinBox SDK related work on android only.
  MethodChannel finBoxMethodChannel = const MethodChannel(
    'FinBox.MethodChannel',
  );

  static MainController instance() =>
      Get.find<MainController>(tag: (MainController).toString());

  /// Using this function we will get UUID platform vise.
  FutureOr<String> getUUID() async {
    if (GetPlatform.isAndroid) {
      // For android we are using method channel
      // and generating UUID on native side.
      final String uuid = await uuidMethodChannel.invokeMethod(
        'GetUUID',
        SharedPref.getString(PrefsKey.userIdKey, ''),
      );
      return uuid;
    } else {
      // For IOS we will get UUID using DeviceInfo Package.
      // as Per the discussion with @Geeta.
      return iosDeviceInfo.identifierForVendor ?? '';
    }
  }

  /// This function will call the native code using methodChannel to
  /// navigate user to finbox SDK.
  FutureOr<void> startFinBoxForAndroid({
    String? token,
    String? leadId,
    required String finBoxApiKey,
  }) async {
    Map<String, dynamic> data = {
      'token': token,
      'leadId': leadId,
      'finBoxApiKey': finBoxApiKey,
    };

    await finBoxMethodChannel.invokeMethod('StartFinBox', data);
  }
}
