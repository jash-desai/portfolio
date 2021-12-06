import 'package:flutter/material.dart';

mixin Colorz {
  static const Color accentColor = Color(0xffdb7093);
  static const Color primaryColor = Color(0xff252733);
  static const Color secondaryColor = Color(0xff333645);
}

Map<int, Color> myColorCodes = {
  50: const Color.fromRGBO(219, 112, 147, .1),
  100: const Color.fromRGBO(219, 112, 147, .2),
  200: const Color.fromRGBO(219, 112, 147, .3),
  300: const Color.fromRGBO(219, 112, 147, .4),
  400: const Color.fromRGBO(219, 112, 147, .5),
  500: const Color.fromRGBO(219, 112, 147, .6),
  600: const Color.fromRGBO(219, 112, 147, .7),
  700: const Color.fromRGBO(219, 112, 147, .8),
  800: const Color.fromRGBO(219, 112, 147, .9),
  900: const Color.fromRGBO(219, 112, 147, 1),
};
