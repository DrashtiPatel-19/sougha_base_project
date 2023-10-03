import '../../utils/exports.dart';

// final remoteConfig = FirebaseRemoteConfig.instance;

abstract class AppInitializer {
  static void init(
    VoidCallback runApp,
  ) {
    ErrorWidget.builder = (errorDetails) {
      return CustomErrorWidget(
        message: errorDetails.exceptionAsString(),
      );
    };
    runZonedGuarded(() async {
      WidgetsFlutterBinding.ensureInitialized();
      FlutterError.onError = (details) {
        // FirebaseCrashlytics.instance.recordFlutterError;
        FlutterError.dumpErrorToConsole(details);
        DebugLog.e(details.stack.toString());
      };
      await _initServices();
      runApp();
    }, (error, stack) {
      DebugLog.i('runZonedGuarded: ${error.toString()}');
    });
  }

  static FutureOr<void> _initServices() async {
    try {
      Get.put(MainController(),
          permanent: true, tag: (MainController).toString());

      if (GetPlatform.isAndroid) {
        final androidDeviceInfo = await DeviceInfoPlugin().androidInfo;
        MainController.instance().androidInfo = androidDeviceInfo;
      } else {
        final iosDeviceInfo = await DeviceInfoPlugin().iosInfo;
        MainController.instance().iosDeviceInfo = iosDeviceInfo;
      }

      final packageInfo = await PackageInfo.fromPlatform();
      MainController.instance().packageInfo = packageInfo;

      // await Firebase.initializeApp();
      await _initRemoteConfig();
      await _initStorage();
      _initScreenPreference();
    } catch (err) {
      rethrow;
    }
  }

  static FutureOr<void> _initStorage() async {
    await GetStorage.init();
    await SharedPref.init();
  }

  static void _initScreenPreference() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  static FutureOr<void> _initRemoteConfig() async {
    try {
      // await remoteConfig.setConfigSettings(RemoteConfigSettings(
      //   fetchTimeout: const Duration(minutes: 1),
      //   minimumFetchInterval: const Duration(minutes: 1),
      // ));
    } catch (e) {
      DebugLog.d(e.toString());
    }
  }
}
