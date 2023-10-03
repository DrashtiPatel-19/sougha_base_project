import 'utils/exports.dart';

void mainDelegate() => AppInitializer.init(
      () async {
        setPathUrlStrategy();
        runApp(const MyApp());
      },
    );

class MyApp extends GetView<MainController> {
  const MyApp({Key? key}) : super(key: key);

  @override
  MainController get controller => Get.find(tag: (MainController).toString());

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Get.size,
      rebuildFactor: RebuildFactors.all,
      useInheritedMediaQuery: true,
      builder: (context, child) {
        return GetMaterialApp(
          builder: EasyLoading.init(builder: (context, child) {
            configLoader();
            final mediaQuery = MediaQuery(
              //Setting font does not change with system font size
              data: MediaQuery.of(context).copyWith(
                textScaleFactor: 1,
              ),
              child: child ?? const SizedBox(),
            );
            return mediaQuery;
          }),
          debugShowCheckedModeBanner: false,
          translations: AppString(),
          scrollBehavior: AppScrollBehavior(),
          locale: getCurrentLocale(),
          navigatorKey: Get.key,
          fallbackLocale: AppConstant.englishLocale,
          initialBinding: ApplicationBindings(),
          initialRoute: AppPaths.initial,
          getPages: AppPages.routes,
          useInheritedMediaQuery: true,
          onGenerateTitle: (context) => AppString.appNameKey.tr,
          theme: MyAppTheme.theme,
        );
      },
    );
  }

  void configLoader() {
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: Dimens.timeDelay2000)
      ..indicatorType = EasyLoadingIndicatorType.circle
      ..loadingStyle = EasyLoadingStyle.custom
      ..indicatorSize = Dimens.indicatorSize40
      ..radius = Dimens.radius12
      ..progressWidth = Dimens.borderWidth4
      ..textColor = AppColors.bodyTextColor
      ..progressColor = AppColors.primary
      ..backgroundColor = AppColors.transparent
      ..indicatorColor = AppColors.secondary
      ..userInteractions = false
      ..dismissOnTap = false;
  }
}
