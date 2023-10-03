import '../utils/exports.dart';

abstract class BaseGetxController extends FullLifeCycleController {
  var toolBarModel = ToolBarModel(appBarColor: AppColors.activeBlueColor).obs;

  MainController mainController = MainController.instance();

  bool shouldObserveLifeCycle = true;

  void onControllerInit() {}

  void onControllerReady() {}

  void onControllerClose() {}

  void onPageResumed() {}

  void onPagePaused() {}

  void onPageInactive() {}

  void onPageDetached() {}

  //--------------------------------------------------------------------------------

  ToolBarModel? setUpToolbar() {
    return null;
  }

  //-----------------------------------------------------

  void updateToolBar({ToolBarModel? toolBarModel}) {
    ToolBarModel model;
    if (toolBarModel != null) {
      model = toolBarModel;
    } else if (setUpToolbar() != null) {
      model = setUpToolbar()!;
    } else {
      model = ToolBarModel();
    }
    this.toolBarModel.value = model;
  }

  @override
  void onInit() {
    super.onInit();
    WidgetsBinding.instance.addObserver(this);
    onControllerInit();
    updateToolBar();
  }

  @override
  void onClose() {
    super.onClose();
    WidgetsBinding.instance.removeObserver(this);
    onControllerClose();
  }

  @override
  void onReady() {
    super.onReady();
    onControllerReady();
  }

  //--------------------------------------------------------------------------------

  @override
  void update([List<Object>? ids, bool condition = true]) {
    super.update(ids, condition);
    updateToolBar();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (shouldObserveLifeCycle) {
      switch (state) {
        case AppLifecycleState.paused:
          {
            hideKeyboard();
            onPagePaused();
            break;
          }
        case AppLifecycleState.inactive:
          {
            onPageInactive();
            break;
          }
        case AppLifecycleState.resumed:
          {
            hideKeyboard();
            updateToolBar();
            onPageResumed();
            break;
          }
        case AppLifecycleState.detached:
          {
            onPageDetached();
            break;
          }
        case AppLifecycleState.hidden:

      }
    }
  }

  /// Note : need to be checked after updating all of the base
  bool checkAndCloseDrawer() {
    if (Scaffold.of(Get.context!).hasDrawer) {
      var canPop = Scaffold.of(Get.context!).isDrawerOpen;
      Scaffold.of(Get.context!).closeDrawer();
      return canPop;
    }
    return false;
  }

  //-----------------------------------------------------------------------------------------

  /// Navigation Methods

  void _afterNavigation() {
    hideKeyboard();
    shouldObserveLifeCycle = true;
    updateToolBar();
    onPageResumed();
  }

  void _beforeNavigation() {
    hideKeyboard();
    onPagePaused();
    shouldObserveLifeCycle = false;
  }

  FutureOr<V?>? toNamed<V>(String page,
      {dynamic arguments,
        int? id,
        bool preventDuplicates = true,
        Map<String, String>? parameters}) async {
    // add onPause too
    _beforeNavigation();
    V? pageResult = await Get.toNamed<V>(page,
        arguments: arguments,
        id: id,
        preventDuplicates: preventDuplicates,
        parameters: parameters);
    _afterNavigation();
    return pageResult;
  }

  FutureOr<V?>? to<V>(
      dynamic page, {
        bool? opaque,
        Transition? transition,
        Curve? curve,
        Duration? duration,
        int? id,
        String? routeName,
        bool fullscreenDialog = false,
        dynamic arguments,
        Bindings? binding,
        bool preventDuplicates = true,
        bool? popGesture,
        double Function(BuildContext context)? gestureWidth,
      }) async {
    _beforeNavigation();
    V? pageResult = await Get.to<V>(page,
        opaque: opaque,
        transition: transition,
        curve: curve,
        duration: duration,
        id: id,
        routeName: routeName,
        fullscreenDialog: fullscreenDialog,
        arguments: arguments,
        binding: binding,
        preventDuplicates: preventDuplicates,
        popGesture: popGesture,
        gestureWidth: gestureWidth);
    _afterNavigation();
    return pageResult;
  }

  FutureOr<V?>? offNamed<V>(
      String page, {
        dynamic arguments,
        int? id,
        bool preventDuplicates = true,
        Map<String, String>? parameters,
      }) async {
    _beforeNavigation();
    V? pageResult = await Get.offNamed<V>(page,
        arguments: arguments,
        id: id,
        preventDuplicates: preventDuplicates,
        parameters: parameters);
    _afterNavigation();
    return pageResult;
  }

  FutureOr<V?>? offUntil<V>(Route<V> page, RoutePredicate predicate,
      {int? id}) async {
    _beforeNavigation();
    V? pageResult = await Get.offUntil<V>(page, predicate, id: id);
    _afterNavigation();
    return pageResult;
  }

  FutureOr<V?>? offNamedUntil<V>(
      String page,
      RoutePredicate predicate, {
        int? id,
        dynamic arguments,
        Map<String, String>? parameters,
      }) async {
    _beforeNavigation();
    V? pageResult = await Get.offNamedUntil<V>(page, predicate,
        id: id, parameters: parameters, arguments: arguments);
    _afterNavigation();
    return pageResult;
  }

  FutureOr<V?>? offAndToNamed<V>(
      String page, {
        dynamic arguments,
        int? id,
        dynamic result,
        Map<String, String>? parameters,
      }) async {
    _beforeNavigation();
    V? pageResult = await Get.offAndToNamed<V>(page,
        arguments: arguments, id: id, result: result);
    _afterNavigation();
    return pageResult;
  }

  FutureOr<V?>? offAllNamed<V>(
      String newRouteName, {
        RoutePredicate? predicate,
        dynamic arguments,
        int? id,
        Map<String, String>? parameters,
      }) async {
    _beforeNavigation();
    V? pageResult = await Get.offAllNamed<V>(newRouteName,
        predicate: predicate,
        arguments: arguments,
        id: id,
        parameters: parameters);
    _afterNavigation();
    return pageResult;
  }

  FutureOr<V?>? off<V>(
      dynamic page, {
        bool opaque = false,
        Transition? transition,
        Curve? curve,
        bool? popGesture,
        int? id,
        String? routeName,
        dynamic arguments,
        Bindings? binding,
        bool fullscreenDialog = false,
        bool preventDuplicates = true,
        Duration? duration,
        double Function(BuildContext context)? gestureWidth,
      }) async {
    _beforeNavigation();
    V? pageResult = await Get.off<V>(page,
        opaque: opaque,
        transition: transition,
        curve: curve,
        popGesture: popGesture,
        id: id,
        routeName: routeName,
        arguments: arguments,
        binding: binding,
        fullscreenDialog: fullscreenDialog,
        preventDuplicates: preventDuplicates,
        duration: duration,
        gestureWidth: gestureWidth);

    _afterNavigation();

    return pageResult;
  }

  FutureOr<V?>? offAll<V>(
      dynamic page, {
        RoutePredicate? predicate,
        bool opaque = false,
        bool? popGesture,
        int? id,
        String? routeName,
        dynamic arguments,
        Bindings? binding,
        bool fullscreenDialog = false,
        Transition? transition,
        Curve? curve,
        Duration? duration,
        double Function(BuildContext context)? gestureWidth,
      }) async {
    _beforeNavigation();
    V? pageResult = await Get.offAll<V>(page,
        predicate: predicate,
        opaque: opaque,
        popGesture: popGesture,
        id: id,
        routeName: routeName,
        arguments: arguments,
        binding: binding,
        fullscreenDialog: fullscreenDialog,
        transition: transition,
        curve: curve,
        duration: duration,
        gestureWidth: gestureWidth);

    _afterNavigation();

    return pageResult;
  }
}
