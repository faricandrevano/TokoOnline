import 'package:flutter/material.dart';
import 'package:shamo_mobile/app/config.dart';
import 'package:shamo_mobile/core/core.dart';

class DarkTheme {
  DarkTheme(this.primaryColor);

  final Color primaryColor;
  static Color disabledTextColor = AppColors.gray[300]!;
  static Color secondaryColor = AppColors.gray[300]!;
  static Color disabledColor = AppColors.gray[300]!;
  static Color textSolidColor = AppColors.gray[100]!;
  static Color errorColor = AppColors.red;
  static Color dividerColor = AppColors.gray[700]!;
  static Color inputBackgroundColor = AppColors.gray[700]!;
  static Color scaffoldColor = AppColors.gray[900]!;
  static Color cardColor = AppColors.gray[700]!;
  static Color appBarColor = Colors.black;

  ColorScheme get scheme => ColorScheme.dark(
        primary: primaryColor,
        surface: primaryColor,
        secondary: primaryColor,
      );

  ButtonThemeData get button => ButtonThemeData(
        buttonColor: primaryColor,
        disabledColor: disabledTextColor,
        padding: const EdgeInsets.symmetric(
          vertical: Dimens.dp8,
          horizontal: Dimens.dp24,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.dp8),
        ),
      );

  OutlinedButtonThemeData get outlineButton => OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primaryColor,
          side: BorderSide(color: primaryColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimens.dp16),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: Dimens.dp14,
            horizontal: Dimens.dp24,
          ),
          textStyle: text.labelLarge?.copyWith(
            color: primaryColor,
            fontFamily: AppConfig.fontFamily,
          ),
        ),
      );

  ElevatedButtonThemeData get elevatedButton => ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: scheme.onPrimary,
          backgroundColor: primaryColor,
          disabledBackgroundColor: primaryColor.withOpacity(.3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimens.dp16),
          ),
          shadowColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(
            vertical: Dimens.dp14,
            horizontal: Dimens.dp32,
          ),
          textStyle: text.labelLarge?.copyWith(
            color: scheme.onPrimary,
            fontFamily: AppConfig.fontFamily,
          ),
        ),
      );

  CardTheme get card => CardTheme(
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.dp8),
          side: BorderSide(
            color: dividerColor.withOpacity(.3),
          ),
        ),
        color: cardColor,
      );

  AppBarTheme get appBar => AppBarTheme(
        color: appBarColor,
        titleTextStyle: text.titleLarge?.copyWith(
          fontFamily: AppConfig.fontFamily,
          color: textSolidColor,
          fontWeight: FontWeight.w600,
          fontSize: Dimens.dp24,
        ),
        toolbarTextStyle: text.titleLarge?.copyWith(
          color: textSolidColor,
          fontFamily: AppConfig.fontFamily,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
        surfaceTintColor: appBarColor,
        elevation: .15,
        scrolledUnderElevation: .15,
        shadowColor: dividerColor.withOpacity(0.5),
        iconTheme: IconThemeData(
          color: primaryColor,
          size: Dimens.dp24,
        ),
        actionsIconTheme: IconThemeData(
          color: primaryColor,
          size: Dimens.dp24,
        ),
      );

  InputDecorationTheme get inputDecoration => InputDecorationTheme(
        filled: true,
        fillColor: inputBackgroundColor,
        contentPadding: const EdgeInsets.symmetric(
          vertical: Dimens.dp12,
          horizontal: Dimens.dp16,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor.withOpacity(.3),
          ),
          borderRadius: BorderRadius.circular(Dimens.dp16),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor.withOpacity(.3),
          ),
          borderRadius: BorderRadius.circular(Dimens.dp16),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor.withOpacity(.3),
          ),
          borderRadius: BorderRadius.circular(Dimens.dp16),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor,
          ),
          borderRadius: BorderRadius.circular(Dimens.dp16),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: errorColor,
          ),
          borderRadius: BorderRadius.circular(Dimens.dp16),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: errorColor,
          ),
          borderRadius: BorderRadius.circular(Dimens.dp16),
        ),
      );

  BottomNavigationBarThemeData get bottomNav => BottomNavigationBarThemeData(
        backgroundColor: cardColor,
        elevation: 8,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: secondaryColor,
        selectedLabelStyle: const TextStyle(
          fontSize: Dimens.dp12,
          fontFamily: AppConfig.fontFamily,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: Dimens.dp12,
          fontFamily: AppConfig.fontFamily,
        ),
      );

  TabBarTheme get tabBar => TabBarTheme(
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(
            color: primaryColor,
            width: Dimens.dp2,
          ),
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: primaryColor,
        unselectedLabelColor: disabledTextColor,
        labelStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          fontFamily: AppConfig.fontFamily,
        ),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          fontFamily: AppConfig.fontFamily,
        ),
      );

  TextTheme get text => TextTheme(
        bodyLarge: TextStyle(
          color: textSolidColor,
          fontSize: Dimens.dp16,
          fontWeight: FontWeight.normal,
          fontFamily: AppConfig.fontFamily,
        ),
        // Use for regular text
        bodyMedium: TextStyle(
          color: disabledTextColor,
          fontSize: Dimens.dp14,
          fontWeight: FontWeight.normal,
          fontFamily: AppConfig.fontFamily,
        ),
        // Use for heading text
        headlineSmall: TextStyle(
          color: textSolidColor,
          fontWeight: FontWeight.w600,
          fontSize: Dimens.dp24,
          fontFamily: AppConfig.fontFamily,
        ),
        // Use for title text, AppBar
        titleLarge: TextStyle(
          color: textSolidColor,
          fontWeight: FontWeight.w700,
          fontSize: Dimens.dp16,
          fontFamily: AppConfig.fontFamily,
        ),
        // Use for sub title text
        titleMedium: TextStyle(
          color: textSolidColor,
          fontWeight: FontWeight.w600,
          fontSize: Dimens.dp16,
          fontFamily: AppConfig.fontFamily,
        ),

        labelLarge: const TextStyle(
          fontSize: Dimens.dp18,
          fontWeight: FontWeight.w500,
          fontFamily: AppConfig.fontFamily,
        ),
        // Use for caption
        bodySmall: TextStyle(
          fontSize: Dimens.dp10,
          fontFamily: AppConfig.fontFamily,
          color: disabledTextColor,
        ),
      );

  FloatingActionButtonThemeData get floatingButton =>
      FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
        elevation: 2,
      );

  BottomSheetThemeData get bottomSheet => BottomSheetThemeData(
        backgroundColor: scaffoldColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(Dimens.dp20),
          ),
        ),
      );

  DividerThemeData get divider => DividerThemeData(
        color: dividerColor,
        thickness: 1,
      );

  ThemeData get toTheme {
    return ThemeData(
      useMaterial3: true,
      fontFamily: AppConfig.fontFamily,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: scaffoldColor,
      canvasColor: scaffoldColor,
      disabledColor: disabledColor,
      textTheme: text,
      cardTheme: card,
      appBarTheme: appBar,
      dividerColor: dividerColor,
      unselectedWidgetColor: disabledColor,
      buttonTheme: button,
      inputDecorationTheme: inputDecoration,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      outlinedButtonTheme: outlineButton,
      elevatedButtonTheme: elevatedButton,
      bottomNavigationBarTheme: bottomNav,
      tabBarTheme: tabBar,
      floatingActionButtonTheme: floatingButton,
      bottomSheetTheme: bottomSheet,
      dividerTheme: divider,
      colorScheme: scheme.copyWith(error: errorColor),
    );
  }
}
