import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF0C9869);
const kTextColor = Color(0xFF3C4046);
const kBackgorundColor = Color(0xFFF9F8FD);

const double kDefaultPadding = 20.0;


class Palette { 
  static const MaterialColor kToDark = const MaterialColor( 
    0xFF0C9869, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch. 
    const <int, Color>{ 
      50: const Color(0xFF0C9869 ),//10% 
      100: const Color(0xFF0C9869),//20% 
      200: const Color(0xFF0C9869),//30% 
      300: const Color(0xFF0C9869),//40% 
      400: const Color(0xFF0C9869),//50% 
      500: const Color(0xFF0C9869),//60% 
      600: const Color(0xFF0C9869),//70% 
      700: const Color(0xFF0C9869),//80% 
      800: const Color(0xFF0C9869),//90% 
      900: const Color(0xFF0C9869),//100% 
    }, 
  ); 
} // you can define define int 500 as the default shade and add your lighter tints above and darker tints below. 