import '../../../utils/exports.dart';

abstract class AppColors {
  static MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }

  static const defaultLetterSpacing = 0.03;

  static final materialWhite = createMaterialColor(Colors.white);
  static final materialBlack = createMaterialColor(Colors.black);

  static final primary = createMaterialColor(Colors.white);
  static final onPrimary = createMaterialColor(Colors.black);

  static final primaryContainer = primary;
  static final onPrimaryContainer = onPrimary;

  static final secondary = primary;
  static final onSecondary = onPrimary;
  static final onSecondaryContainer = primary;
  static final secondaryContainer = onPrimary;

  static final error = createMaterialColor(const Color(0xFFEB1E00));
  static final onError = materialWhite;
  static final errorContainer = createMaterialColor(Colors.redAccent.shade100);
  static final onErrorContainer = createMaterialColor(Colors.red.shade900);

  static final background = primary;
  static final onBackground = onPrimary;
  static final surface = createMaterialColor(Colors.white);
  static final onSurface = createMaterialColor(Colors.black);

  static final outline = createMaterialColor(const Color(0xFFB5B5B5));
  static final appBarShadow = createMaterialColor(const Color(0xFF9E9E9E));
  static final shadow = createMaterialColor(const Color(0x59000000));
  static final lightShadow = createMaterialColor(const Color(0x29000000));
  static final bottomNavigationShadow = createMaterialColor(const Color(0xFFF7F7F7));

  static final bodyTextColor = createMaterialColor(const Color(0xFF404040));

  /// Used for focused state
  static final activeBlueColor = createMaterialColor(const Color(0xFF0F418C));
  /// Used for unfocused state
  static final inActiveGrayColor = createMaterialColor(const Color(0xFF808080));

  static final buttonBorderColor = createMaterialColor(const Color(0xFFEEEEEE));

  static final radioUncheckedColor = createMaterialColor(const Color(0xFFB4B4B4));


  /// Alerts colors (Used in Listing)
  static final yellowColor = createMaterialColor(const Color(0xFFFFF53C));//#FFFF00
  static final blueColor = activeBlueColor;
  static final redColor = error;
  static const transparent = Colors.transparent;

}
