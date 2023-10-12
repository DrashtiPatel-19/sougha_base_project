import 'exports.dart';

///define toolbar options
///
///[isToolBarVisible] will help to show/hide toolbar
///[isLogoVisible] will help to show/hide logo
///[appBarColor] will help to set color on appbar
///[currentController] will provide current controller
///[isBottomVisible] will provide current controller

class ToolBarModel {
  bool isToolBarVisible, isLogoVisible , isBottomVisible ;
  Color? appBarColor;
  BaseGetxController? currentController;

  ToolBarModel({
    this.isToolBarVisible = false,
    this.appBarColor = AppColors.transparent,
    this.isLogoVisible = false,
    this.currentController,
    this.isBottomVisible = false
  });
}
