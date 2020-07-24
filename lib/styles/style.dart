import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final Color whiteText = const Color(0xFFFFFFFF).withOpacity(.8);
final Color brownText = const Color(0xffAA9171);
final Color blackText = const Color(0xff4D4D4D);
final Color orangeText = const Color(0xFFCA5116);

final Color vintageBg = const Color(0xFFF1E3CB);
final Color brownBg = const Color(0xFF581C0C);


/* final Color primary = const Color(0xFFF1ECD9);
final Color skin = const Color(0xFFF9B384);
final Color secondary = const Color(0xFFC07D2A);
final Color dark = const Color(0xFF393e46); */

//--------------------------- Neumorphic Theme data ----------------------------

NeumorphicThemeData getTheme() {
  return NeumorphicThemeData(
    defaultTextColor: whiteText,
    baseColor: brownBg,
    //accentColor: brownBg,
    intensity: 0.6,
    depth: 3,
    appBarTheme: appBarTheme(),
    textTheme: TextTheme(
      body1: TextStyle(
        color: whiteText,
        fontFamily: 'ubuntu',
      ),
    ),
  );
}

NeumorphicAppBarThemeData appBarTheme() {
  return NeumorphicAppBarThemeData(
    buttonPadding: const EdgeInsets.all(14.0),
    buttonStyle: const NeumorphicStyle(boxShape: NeumorphicBoxShape.circle()),
    color: brownBg,
    textStyle: TextStyle(
      color: whiteText,
      fontFamily: 'ubuntu',
    ),
    iconTheme: IconThemeData(
      color: whiteText,
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
