import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData get appTheme => ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: GoogleFonts.ptSansCaptionTextTheme(),
    primarySwatch: Colors.blue,
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        centerTitle: true
    )
);