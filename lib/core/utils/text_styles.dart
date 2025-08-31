import 'package:flutter/cupertino.dart';

import 'size_config.dart';

abstract class Styles {
  static const fontFamily='Helvetica Neue';

  static TextStyle styleW50014(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily:fontFamily,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleW70049(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 49),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleW40014(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle styleW40016(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleW50020(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleW70022(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 22),
      fontFamily:fontFamily,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleW40012(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleW50012(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleW50015(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 15),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleW50017(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 17),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleW70014(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleW70018(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
    );
  }
  static TextStyle styleW70013(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 13),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
    );
  }
  static TextStyle styleW50013(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 13),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
    );
  }
  static TextStyle styleW70016(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
    );
  }
  static TextStyle styleW4009(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 9),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle styleW70032(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 32),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
    );
  }
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) { //ScaleFactor is the range of width for every platform
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfg.tablet) {
    return width / 550; //the middle value between 400 and 700 for mobile
    //if the width of mobile platform decrease this value the fontSize should decreases too
    //the opposite is right

  } else if (width < SizeConfg.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}