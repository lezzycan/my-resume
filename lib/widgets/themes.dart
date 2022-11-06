import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/utils/constants.dart';

class MyThemes {
  static final darkTheme = ThemeData(
     colorScheme: const ColorScheme.dark(),
    scaffoldBackgroundColor: Colors.grey.shade900,
    
    fontFamily: GoogleFonts.openSans().fontFamily,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Constants.lightIconsColor,
      ),
      backgroundColor: Constants.lightTextColor,
      centerTitle: true,
      titleTextStyle: TextStyle(
          color: Constants.lightScaffoldColor,
          fontSize: 22,
          fontWeight: FontWeight.bold),
      elevation: 1,
    ),
   
    
   
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    // primaryColor: Constants.lightCardColor,
    // backgroundColor: Constants.lightBackgroundColor,
    fontFamily: GoogleFonts.openSans().fontFamily,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Constants.lightIconsColor,
      ),
      backgroundColor: Constants.lightTextColor,
      centerTitle: true,
      titleTextStyle: TextStyle(
          color: Constants.lightScaffoldColor,
          fontSize: 22,
          fontWeight: FontWeight.bold),
      elevation: 1,
    ),
    // iconTheme: const IconThemeData(
    //   color: Constants.lightIconsColor,
    // ),

    // textSelectionTheme: const TextSelectionThemeData(
    //   cursorColor: Colors.black,
    //   selectionColor: Colors.blue,
    // ),

    //     ),
   // cardColor: Constants.lightCardColor,
   // brightness: Brightness.light,
    colorScheme: const ColorScheme.light()
  );
}
