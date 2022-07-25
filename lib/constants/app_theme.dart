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

  static InputDecoration myInputDecor(String hintText) => InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
        color: Colors.grey.shade600,
      ),
      prefixIcon: hintText.contains('Search')
          ? Icon(
              Icons.search,
              size: 20.0,
              color: Colors.grey.shade600,
            )
          : null,
      filled: true,
      fillColor: Colors.grey.shade200,
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      errorBorder: outlineInputBorder,
      focusedErrorBorder: outlineInputBorder,
      disabledBorder: outlineInputBorder);
}
