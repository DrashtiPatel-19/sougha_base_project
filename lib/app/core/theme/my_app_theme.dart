import '../../../utils/exports.dart';

abstract class MyAppTheme {

  static final ColorScheme appColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.primary,
    primaryContainer: AppColors.primaryContainer,
    onPrimaryContainer: AppColors.onPrimaryContainer,
    onPrimary: AppColors.onPrimary,
    secondary: AppColors.secondary,
    onSecondary: AppColors.onSecondary,
    onSecondaryContainer: AppColors.onSecondaryContainer,
    secondaryContainer: AppColors.secondaryContainer,
    error: AppColors.error,
    onError: AppColors.onError,
    errorContainer: AppColors.errorContainer,
    onErrorContainer: AppColors.onErrorContainer,
    background: AppColors.background,
    onBackground: AppColors.onBackground,
    surface: AppColors.surface,
    onSurface: AppColors.onSurface,
    outline: AppColors.outline,
    shadow: AppColors.shadow,
  );

  static ThemeData get theme {
    return ThemeData(
      brightness: Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: getAppBarTheme(),
      primaryTextTheme: AppStyles.textTheme,
      colorScheme: appColorScheme,
      splashColor: appColorScheme.onPrimary.withOpacity(0.14),
      indicatorColor: AppColors.activeBlueColor,
      iconTheme: IconThemeData(color: appColorScheme.onBackground),
      scaffoldBackgroundColor: appColorScheme.background,
      buttonTheme: getButtonTheme(),
      textButtonTheme: getTextButtonThemeData(),
      elevatedButtonTheme: getElevatedButtonThemeData(),
      outlinedButtonTheme: getOutlinedButtonThemeData(),
      floatingActionButtonTheme: getFloatingActionButtonThemeData(),
      textTheme: AppStyles.textTheme,
      inputDecorationTheme: getInputDecorationTheme(),
      cardTheme: getCardTheme(),
      dialogTheme: getDialogTheme(),
      bottomSheetTheme: getBottomSheetThemeData(),
      bottomNavigationBarTheme: getBottomNavigationBarThemeData(),
      dividerColor: appColorScheme.outline,
      drawerTheme: getDrawerThemeData(),
      // toggleButtonsTheme
      // :,
      // timePickerTheme
      // :,
      tabBarTheme: getTabBarTheme(),
      switchTheme: getSwitchThemeData(),
      snackBarTheme: getSnackBarThemeData(),
      // sliderTheme
      // :,
      radioTheme: getRadioThemeData(),
      // checkboxTheme
      // :,
      progressIndicatorTheme: getProgressIndicatorThemeData(),
      popupMenuTheme: getPopupMenuThemeData(),
      useMaterial3: false,
    );
  }

  static AppBarTheme getAppBarTheme() {
    return AppBarTheme(
      color: appColorScheme.primary,
      centerTitle: true,
      actionsIconTheme: IconThemeData(
          color: appColorScheme.onPrimary, size: Dimens.iconSize24),
      shadowColor: AppColors.appBarShadow,
      shape: Border(
        bottom: BorderSide(
          color: AppColors.appBarShadow,
        ),
      ),
      iconTheme: IconThemeData(color: appColorScheme.onPrimary),
      titleTextStyle: AppStyles.titleLarge.copyWith(
          fontSize: Dimens.fontSize20, color: AppColors.activeBlueColor),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarColor: appColorScheme.background,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: appColorScheme.background,
        systemNavigationBarDividerColor: appColorScheme.onBackground,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemStatusBarContrastEnforced: true,
        systemNavigationBarContrastEnforced: true,
      ),
    );
  }

  static ButtonThemeData getButtonTheme() {
    return ButtonThemeData(
      buttonColor: appColorScheme.secondary,
      disabledColor: appColorScheme.outline,
      padding: const EdgeInsets.symmetric(
          vertical: Dimens.padding10, horizontal: Dimens.padding20),
      colorScheme: appColorScheme,
      textTheme: ButtonTextTheme.primary,
      splashColor: appColorScheme.onPrimary.withOpacity(0.14),
      shape: RoundedRectangleBorder(
          borderRadius: Dimens.radius10.borderRadius,
          side: BorderSide(
              color: appColorScheme.secondary,
              style: BorderStyle.solid,
              width: Dimens.borderWidth3)),
    );
  }

  static TextButtonThemeData getTextButtonThemeData() {
    return TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return appColorScheme.primary.withOpacity(0.14);
            }

            return null;
          },
        ),
        // If you want to set textStyle for button with color, first you have
        // remove foreground color, so giving null as value.
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColors.inActiveGrayColor;
          }
          return AppColors.activeBlueColor;
        }),
        // Setting textStyle for text of button
        textStyle: MaterialStatePropertyAll(
          AppStyles.titleLarge.copyWith(
              fontSize: Dimens.fontSize20, color: AppColors.activeBlueColor),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: Dimens.radius6.borderRadius,
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return appColorScheme.outline;
            }
            return null;
          },
        ),
      ),
    );
  }

  static ElevatedButtonThemeData getElevatedButtonThemeData() {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return appColorScheme.onPrimary.withOpacity(0.14);
            }
            return null;
          },
        ),
        shadowColor: MaterialStatePropertyAll(
          appColorScheme.shadow,
        ),
        elevation: const MaterialStatePropertyAll(
          Dimens.space8,
        ),
        backgroundColor: MaterialStatePropertyAll(
          appColorScheme.secondary,
        ),
        // If you want to set textStyle for button with color, first you have
        // remove foreground color, so giving null as value.
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColors.inActiveGrayColor;
          }
          return AppColors.activeBlueColor;
        }),
        // Setting textStyle for text of button
        textStyle: MaterialStatePropertyAll(
          AppStyles.titleLarge.copyWith(
              fontSize: Dimens.fontSize20, color: AppColors.activeBlueColor),
        ),
        padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(
              horizontal: Dimens.padding30, vertical: Dimens.padding12),
        ),
        side: MaterialStatePropertyAll(
          BorderSide(
            color: AppColors.buttonBorderColor,
            style: BorderStyle.solid,
            strokeAlign: 1,
            width: Dimens.borderWidth1 / 2,
          ),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: Dimens.radius24.borderRadius,
          ),
        ),
      ),
    );
  }

  static OutlinedButtonThemeData getOutlinedButtonThemeData() {
    return OutlinedButtonThemeData(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return appColorScheme.primary.withOpacity(0.14);
            }
            return null;
          },
        ),
        backgroundColor: MaterialStatePropertyAll(
          appColorScheme.background,
        ),
        // If you want to set textStyle for button with color, first you have
        // remove foreground color, so giving null as value.
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColors.inActiveGrayColor;
          }
          return AppColors.activeBlueColor;
        }),
        // Setting textStyle for text of button
        textStyle: MaterialStatePropertyAll(
          AppStyles.titleLarge.copyWith(
              fontSize: Dimens.fontSize20, color: AppColors.activeBlueColor),
        ),
        padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(
            horizontal: Dimens.padding30, vertical: Dimens.padding10)),
        side: MaterialStatePropertyAll(
          BorderSide(
            color: AppColors.activeBlueColor,
            style: BorderStyle.solid,
            strokeAlign: 1,
            width: Dimens.borderWidth1,
          ),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: Dimens.radius27.borderRadius,
          ),
        ),
      ),
    );
  }

  static FloatingActionButtonThemeData getFloatingActionButtonThemeData() {
    return FloatingActionButtonThemeData(
      elevation: Dimens.space4,
      backgroundColor: appColorScheme.secondary,
      shape: RoundedRectangleBorder(
          borderRadius: Dimens.radius20.borderRadius),
      disabledElevation: Dimens.space0,
      extendedIconLabelSpacing: Dimens.space20,
      splashColor: appColorScheme.primary.withOpacity(0.14),
    );
  }

  static InputDecorationTheme getInputDecorationTheme() {
    return InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: Dimens.padding12,
        vertical: Dimens.padding4,
      ),
      prefixStyle: AppStyles.textNormal.copyWith(fontSize: Dimens.fontSize16),
      hintStyle: AppStyles.hintStyle.copyWith(fontSize: Dimens.fontSize16),
      labelStyle: AppStyles.hintStyle.copyWith(fontSize: Dimens.fontSize16),

      // enabledBorder: 10.outlineInputBorder(
      //   borderSide: 1.borderSide(color: appColorScheme.outline),
      // ),
      focusedBorder: Dimens.radius10.outlineInputBorder(
        borderSide: Dimens.borderWidth1
            .borderSide(color: AppColors.activeBlueColor),
      ),
      border: Dimens.radius10.outlineInputBorder(
        borderSide:
            Dimens.borderWidth1.borderSide(color: appColorScheme.outline),
      ),
      focusColor: AppColors.activeBlueColor,
      hoverColor: Colors.transparent,
      errorStyle: AppStyles.errorStyle,
      alignLabelWithHint: true,
      isDense: false,
      floatingLabelStyle: MaterialStateTextStyle.resolveWith((states) {
        if (states.contains(MaterialState.error)) {
          return AppStyles.errorStyle;
        }
        if (states.contains(MaterialState.focused)) {
          return AppStyles.hintStyle.copyWith(color: AppColors.activeBlueColor);
        }
        return AppStyles.hintStyle;
      }),
      errorBorder: Dimens.radius10.outlineInputBorder(
        borderSide:
            Dimens.borderWidth1.borderSide(color: appColorScheme.error),
      ),
      focusedErrorBorder: Dimens.radius10.outlineInputBorder(
        borderSide:
            Dimens.borderWidth1.borderSide(color: appColorScheme.error),
      ),
      disabledBorder: Dimens.radius10.outlineInputBorder(
        borderSide: Dimens.borderWidth1
            .borderSide(color: appColorScheme.outline.withOpacity(0.5)),
      ),
    );
  }

  static CardTheme getCardTheme() {
    return CardTheme(
      color: appColorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: Dimens.radius10.borderRadius,
      ),
      shadowColor: appColorScheme.shadow,
      elevation: Dimens.space4,
    );
  }

  static DialogTheme getDialogTheme() {
    return DialogTheme(
      backgroundColor: appColorScheme.background,
      shape: RoundedRectangleBorder(
        borderRadius: Dimens.radius20.borderRadius,
      ),
      elevation: Dimens.space4,
      titleTextStyle:
          AppStyles.titleLarge.copyWith(color: appColorScheme.onBackground),
      contentTextStyle: AppStyles.bodyMedium.copyWith(
        color: appColorScheme.onBackground,
      ),
    );
  }

  static BottomSheetThemeData getBottomSheetThemeData() {
    return BottomSheetThemeData(
      backgroundColor: appColorScheme.background,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Dimens.radius24),
          topRight: Radius.circular(Dimens.radius24),
        ),
      ),
      modalBackgroundColor: appColorScheme.background,
      elevation: Dimens.space4,
      modalElevation: Dimens.space4,
    );
  }

  static BottomNavigationBarThemeData getBottomNavigationBarThemeData() {
    return BottomNavigationBarThemeData(
      elevation: Dimens.space4,
      backgroundColor: appColorScheme.background,
      selectedIconTheme: IconThemeData(
          color: AppColors.activeBlueColor, size: Dimens.iconSize28),
      selectedItemColor: AppColors.activeBlueColor,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      unselectedIconTheme: IconThemeData(color: AppColors.inActiveGrayColor),
      unselectedItemColor: AppColors.inActiveGrayColor,
      selectedLabelStyle:
          AppStyles.textNormal.copyWith(fontSize: Dimens.fontSize12),
      unselectedLabelStyle:
          AppStyles.textNormal.copyWith(fontSize: Dimens.fontSize12),
    );
  }

  static DrawerThemeData getDrawerThemeData() {
    return DrawerThemeData(
      backgroundColor: appColorScheme.background,
    );
  }

  static TabBarTheme getTabBarTheme() {
    return TabBarTheme(
      overlayColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.pressed)) {
            return AppColors.activeBlueColor.withOpacity(0.14);
          }
          return null;
        },
      ),
      // indicator: BoxDecoration(
      //     color: appColorScheme.primary,
      //     shape: BoxShape.rectangle,
      //     borderRadius: 2.borderRadius,
      //     gradient: LinearGradient(colors: [appColorScheme.primary])),
      indicatorSize: TabBarIndicatorSize.label,
      labelPadding: const EdgeInsets.symmetric(
          vertical: Dimens.padding6, horizontal: Dimens.padding10),
      labelColor: AppColors.activeBlueColor,
      unselectedLabelColor: AppColors.inActiveGrayColor,
      labelStyle: AppStyles.textMedium.copyWith(fontSize: Dimens.fontSize20),
      unselectedLabelStyle:
          AppStyles.textMedium.copyWith(fontSize: Dimens.fontSize20),
    );
  }

  static SwitchThemeData getSwitchThemeData() {
    return SwitchThemeData(
      thumbColor: MaterialStatePropertyAll(appColorScheme.background),
      trackColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.selected) ||
              states.contains(MaterialState.pressed)) {
            return AppColors.activeBlueColor;
          }
          return AppColors.inActiveGrayColor;
        },
      ),
      overlayColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.pressed)) {
            return AppColors.activeBlueColor.withOpacity(0.14);
          }
          return null;
        },
      ),
      splashRadius: Dimens.radius10,
    );
  }

  static SnackBarThemeData getSnackBarThemeData() {
    return SnackBarThemeData(
      shape: RoundedRectangleBorder(
          borderRadius: Dimens.radius6.borderRadius),
      backgroundColor: appColorScheme.onBackground,
      actionTextColor: appColorScheme.background,
      contentTextStyle:
          AppStyles.bodyMedium.copyWith(color: appColorScheme.background),
    );
  }

  static RadioThemeData getRadioThemeData() {
    return RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return AppColors.activeBlueColor;
        }
        return AppColors.radioUncheckedColor;
      }),
      splashRadius: Dimens.radius10,
    );
  }

  static ProgressIndicatorThemeData getProgressIndicatorThemeData() {
    return ProgressIndicatorThemeData(
      circularTrackColor: Colors.transparent,
      color: AppColors.activeBlueColor,
      linearMinHeight: Dimens.space2,
      linearTrackColor: Colors.transparent,
    );
  }

  static PopupMenuThemeData getPopupMenuThemeData() {
    return PopupMenuThemeData(
        color: appColorScheme.surface,
        elevation: Dimens.space4,
        shape: RoundedRectangleBorder(
            borderRadius: Dimens.radius10.borderRadius),
        textStyle: AppStyles.bodySmall);
  }
}
