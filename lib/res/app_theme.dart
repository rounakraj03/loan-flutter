import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get theme {
    return ThemeData.dark().copyWith(
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.blue)
          )
      ),
      sliderTheme: SliderThemeData(tickMarkShape: SliderTickMarkShape.noTickMark),
      scaffoldBackgroundColor: Colors.black87,
      iconTheme: const IconThemeData(color: Colors.white,),
      // textTheme: GoogleFonts.robotoCondensedTextTheme()
      textTheme: GoogleFonts.montserratTextTheme().apply(
        displayColor: Colors.white, bodyColor: Colors.white
      )
    );
  }
}