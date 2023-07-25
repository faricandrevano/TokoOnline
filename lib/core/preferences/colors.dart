import 'package:flutter/material.dart';

class AppColors {
  const AppColors._();
  // ------------------------------------------------- //
  // Color's pallete from https://materialui.co/colors/
  // ------------------------------------------------- //

  static const gray = MaterialColor(0xFF9E9E9E, {
    100: Color(0xFFF5F5F5),
    300: Color(0xFFE0E0E0),
    500: Color(0xFF9E9E9E),
    700: Color(0xFF616161),
    900: Color(0xFF212121),
  });

  static const teal = MaterialColor(0xFF009688, {
    100: Color(0xFFB2DFDB),
    300: Color(0xFF4DB6AC),
    500: Color(0xFF009688),
    700: Color(0xFF00796B),
    900: Color(0xFF004D40),
  });

  static const amber = MaterialColor(0xFFFFC107, {
    100: Color(0xFFFFECB3),
    300: Color(0xFFFFD54F),
    500: Color(0xFFFFC107),
    700: Color(0xFFFFA000),
    900: Color(0xFFFF6F00),
  });

  static const red = MaterialColor(0xFFF44336, {
    100: Color(0xFFFFCDD2),
    300: Color(0xFFE57373),
    500: Color(0xFFF44336),
    700: Color(0xFFD32F2F),
    900: Color(0xFFB71C1C),
  });

  static const indigo = MaterialColor(0xFF5C40CC, {
    100: Color(0xFFE0D9FF),
    300: Color(0xFF7986CB),
    500: Color(0xFF5C40CC),
    700: Color(0xFF303F9F),
    900: Color(0xFF1A237E),
  });
}
