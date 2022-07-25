import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static final TextStyle appTitle = GoogleFonts.roboto(
      fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black);

  static final TextStyle tabItems = GoogleFonts.roboto(
      fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white);

  static final OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(30.0),
    borderSide: BorderSide(color: Colors.grey.shade200),
  );
}
