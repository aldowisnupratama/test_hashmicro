import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const primary = Color(0xff12b505);

  static const black = Color(0xFF000000);

  static const transparent = Color(0x00000000);

  static const MaterialColor redNegative =
      MaterialColor(0XFFED3B3B, <int, Color>{
    100: Color(0xffed3b3b),
    200: Color(0xffC93F3F),
    300: Color(0xff992222),
  });
  static const MaterialColor grey = MaterialColor(0xffE1E5EF, <int, Color>{
    10: Color(0xffE1E5EF),
    100: Color(0xffCACACA),
    200: Color(0xffBBBBBB),
    250: Color(0xffA6A6A6),
    500: Color(0xff909090),
    550: Color(0xff808080)
  });

  static const MaterialColor light = MaterialColor(0xffF8F8F8, <int, Color>{
    10: Color(0xffF8F8F8),
    20: Color(0xffF7F7F7),
    30: Color(0xffF0F0F0),
    40: Color(0xffEBEBEB),
    50: Color(0xffE6E6E6),
    60: Color(0xffE8E8E8),
    70: Color(0xffE1E1E1)
  });

  static const MaterialColor dark = MaterialColor(0xff323940, <int, Color>{
    450: Color(0xff444444),
    460: Color(0xff373737),
    500: Color(0xff323940),
    550: Color(0xff2F363E),
    600: Color(0xff262D34),
    650: Color(0xff24292F),
    680: Color(0xff2E2E2E),
    700: Color(0xff1B1F24),
    750: Color(0xff15181C),
  });
}
