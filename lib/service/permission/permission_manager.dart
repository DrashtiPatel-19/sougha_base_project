import '../../utils/exports.dart';

/// Utility class for Permission asking and granting.
///
/// Customized [PermissionManager] as per this app's
/// requirement.
class PermissionManager {
  Future<bool> getPermission(
      {required Permission permission,
      Function()? onGranted,
      Function()? denied,
      Function()? onPermanentlyDenied,
      Function()? onRestricted}) async {
    var status = await permission.request();
    if (status.isGranted || status.isLimited) {
      onGranted?.call();
      return true;
    } else if (status.isDenied) {
      if (denied != null) {
        denied.call();
        return false;
      } else {
        return await getPermission(
            permission: permission,
            onGranted: onGranted,
            onRestricted: onRestricted,
            onPermanentlyDenied: onPermanentlyDenied);
      }
    } else if (status.isPermanentlyDenied) {
      onPermanentlyDenied?.call();
      return false;
    } else if (status.isRestricted) {
      onRestricted?.call();
      return false;
    }
    return false;
  }

  //----------------------------------------------------------------
  /// check OS version of android is same or greater
  Future<bool> isAndroidOSVersionISEqualOrHigher(int version) async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    if (androidInfo.version.sdkInt >= version) {
      return true;
    } else {
      return false;
    }
  }
}
