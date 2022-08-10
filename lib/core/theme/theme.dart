import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resident/core/theme/resident_color.dart';
import 'package:resident/core/theme/resident_radius.dart';
import 'package:resident/core/theme/resident_text_theme.dart';
import 'package:resident/core/theme/resident_typography.dart';

class ResidentTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: ResidentColor.primaryColor,
    appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: ResidentColor.primaryColor,
        iconTheme: IconThemeData(
          color: ResidentColor.blackColor,
        )
    ),
    splashColor: ResidentColor.splashColor,
    drawerTheme: const DrawerThemeData(
      backgroundColor: ResidentColor.whiteColor,
    ),
    primaryColor: ResidentColor.whiteColor,
    canvasColor: ResidentColor.grey5Color.withOpacity(0.2),
    colorScheme: const ColorScheme.light(
      onSurface: ResidentColor.grey4Color,
      surface: ResidentColor.blue2Color,
    ),
    tabBarTheme: TabBarTheme(
    indicator: const BubbleTabIndicator(
          indicatorHeight: 40,
          indicatorRadius: 10,
          indicatorColor: ResidentColor.whiteColor
    ),
      labelStyle: ResidentTextStyle.selectedLabel,
      unselectedLabelStyle: ResidentTextStyle.unselectedLabel,
      labelColor: ResidentColor.blackColor,
      unselectedLabelColor: ResidentColor.greyColor,
      indicatorSize: TabBarIndicatorSize.tab,
    ),
    textTheme: ResidentTextTheme.textTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(double.maxFinite,50),
          primary: ResidentColor.secondaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          textStyle: ResidentTextStyle.elevatedButton,
        ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary:ResidentColor.grey2Color,
        elevation: 0,
        fixedSize: const Size(double.maxFinite,55),
        backgroundColor: ResidentColor.grey5Color.withOpacity(0.12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(ResidentRadius.cornerRadius8)
        )
      ),
    )
    // cardTheme: CardTheme(
    //     elevation: 4,
    //     margin: EdgeInsets.zero,
    //     shape: RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(10))),

  );
}
