import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/model.dart';

class AppTheme {
  AppTheme._();

  static final List<UserModel> tempList = [
    UserModel(
        avaUrl: 'assets/images/userImage1.jpeg',
        name: 'Nick Jonas',
        nickName: 'Wazzup bro'),
    UserModel(
        avaUrl: 'assets/images/userImage2.jpeg',
        name: 'Zayn Malik',
        nickName: "What's good man"),
    UserModel(
        avaUrl: 'assets/images/userImage3.jpeg', name: 'Miley', nickName: 'Hi'),
    UserModel(
        avaUrl: 'assets/images/userImage4.jpeg',
        name: 'Jordan',
        nickName: 'Sheeshhh'),
    UserModel(
        avaUrl: 'assets/images/userImage5.jpeg',
        name: 'Kyrie Irving',
        nickName: 'Wanna play games?'),
    UserModel(
        avaUrl: 'assets/images/userImage6.jpeg',
        name: 'Lebron James',
        nickName: 'Wazzup bro'),
    UserModel(
        avaUrl: 'assets/images/userImage7.jpeg',
        name: 'Justin',
        nickName: 'Check my new song'),
    UserModel(
        avaUrl: 'assets/images/userImage8.jpeg',
        name: 'Steve',
        nickName: 'Bruh ahsfushfusdhfs udhfusidfhsdufhsd iufhisduh'),
  ];

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
