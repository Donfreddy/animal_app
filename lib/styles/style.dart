import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final Color primary = const Color(0xFFF1ECD9);
final Color secondary = const Color(0xFFC07D2A);
final Color textColor = const Color(0xffcccccc);
final Color subTextColor = const Color(0xff4D4D4D);
final Color subText = const Color(0xffAA9171);
final Color bgColor = const Color(0xFF2C1918);

//--------------------------- Neumorphic Theme data ----------------------------

NeumorphicThemeData getTheme() {
  return NeumorphicThemeData(
      defaultTextColor: textColor,
      baseColor: bgColor,
      accentColor: bgColor,
      intensity: 0.6,
      depth: 3,
      appBarTheme: appBarTheme());
}

NeumorphicAppBarThemeData appBarTheme() {
  return NeumorphicAppBarThemeData(
    buttonPadding: const EdgeInsets.all(14.0),
    buttonStyle: const NeumorphicStyle(boxShape: NeumorphicBoxShape.circle()),
    color: bgColor,
    iconTheme: IconThemeData(
      color: textColor,
    ),
    icons: NeumorphicAppBarIcons(
      backIcon: Icon(FontAwesomeIcons.chevronLeft),
      menuIcon: Icon(FontAwesomeIcons.bars),
    ),
  );
}

//--------------------------- screen height & width ----------------------------

double screenHeight(context) {
  return MediaQuery.of(context).size.height;
}

double screenWidth(context) {
  return MediaQuery.of(context).size.width;
}

//----------------------------- text-styles sans Regular ------------------
