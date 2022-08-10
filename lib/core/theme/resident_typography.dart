import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resident/core/theme/resident_color.dart';

class ResidentTextStyle{


  static TextStyle headline1 = GoogleFonts.manrope(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: ResidentColor.blackColor,
  );
  // static TextStyle headline2 = GoogleFonts.manrope(
  //     fontSize: 16, fontWeight: FontWeight.w700, color: ResidentColor.textColorBlack
  // );
  // static TextStyle headline3 = GoogleFonts.roboto(
  //     fontSize: 24, fontWeight: FontWeight.w600, color: black
  // );
  static TextStyle headline4 = GoogleFonts.manrope(
      fontSize: 16, fontWeight: FontWeight.w700, color: ResidentColor.blackColor
  );
  static TextStyle headline5 = GoogleFonts.manrope(
      fontSize: 14, fontWeight: FontWeight.w500, color: ResidentColor.greyColor
  );
  static TextStyle headline6 = GoogleFonts.manrope(
      fontSize: 14, fontWeight: FontWeight.w500, color: ResidentColor.blackColor
  );
  static TextStyle subtitle1 = GoogleFonts.manrope(
      fontSize: 12, fontWeight: FontWeight.w500, color: ResidentColor.greyColor,
  );
  // static TextStyle subtitle2 = GoogleFonts.roboto(
  //     fontSize: 24, fontWeight: FontWeight.w600, color: black
  // );
  static TextStyle bodyText1 = GoogleFonts.manrope(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: ResidentColor.blackColor,
  );
// static TextStyle bodyText2 = GoogleFonts.roboto(
//     fontSize: 24, fontWeight: FontWeight.w600, color: black
// );
static TextStyle caption = GoogleFonts.manrope(
    fontSize: 12, fontWeight: FontWeight.w700, color: ResidentColor.blueColor,
);
// static TextStyle button = GoogleFonts.roboto(
//     fontSize: 24, fontWeight: FontWeight.w600, color: black
// );
//
//
static TextStyle displayLarge = GoogleFonts.manrope(
      fontSize: 14, fontWeight: FontWeight.w700, color: ResidentColor.whiteColor
);
static TextStyle displayMedium = GoogleFonts.manrope(
      fontSize: 14, fontWeight: FontWeight.w500, color: ResidentColor.whiteColor
);
static TextStyle displaySmall = GoogleFonts.manrope(
      fontSize: 14, fontWeight: FontWeight.w500, color: ResidentColor.whiteColor.withOpacity(0.6),
);


//TabBar TextStyle

static TextStyle selectedLabel = GoogleFonts.manrope(
      fontSize: 12, fontWeight: FontWeight.w700, color: ResidentColor.blackColor,
);
static TextStyle unselectedLabel = GoogleFonts.manrope(
      fontSize: 12, fontWeight: FontWeight.w700, color: ResidentColor.greyColor,
);



//Elevated Button TextStyle

static TextStyle elevatedButton = GoogleFonts.manrope(
  fontSize: 14, fontWeight: FontWeight.w700, color: ResidentColor.whiteColor,
);

//Outline Button TextStyle

static TextStyle outlineButton = GoogleFonts.manrope(
  fontSize: 14, fontWeight: FontWeight.w700, color: ResidentColor.blackColor,
);

}