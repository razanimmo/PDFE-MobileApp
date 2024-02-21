import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppConfig {
  static var padding = EdgeInsets.only(left: 20, right: 20, bottom: 15);
  static var themeData = ThemeData(
      fontFamily: "Lexend",
      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.resolveWith((states) => Colors.white),
        fillColor: MaterialStateProperty.resolveWith(
            (states) => Color.fromRGBO(72, 198, 16, 1)),
        side: BorderSide(width: 1, color: Color.fromRGBO(66, 114, 183, 1)),
      ),
      secondaryHeaderColor: Color.fromRGBO(234, 117, 69, 1),
      primaryColorDark: Color.fromRGBO(26, 7, 0, 1),
      primaryColor: Color.fromRGBO(167, 194, 177, 1),
      canvasColor: Color.fromRGBO(115, 133, 143, 1),
      cardColor: Color.fromRGBO(54, 105, 201, 1),
      buttonTheme: ButtonThemeData(
        buttonColor: Color.fromRGBO(66, 114, 183, 1),
      ),
      focusColor: Color.fromRGBO(75, 75, 75, 1),
      hintColor: Color.fromRGBO(138, 150, 175, 1),
      splashColor: Colors.white,
      primaryColorLight: Color.fromRGBO(136, 142, 157, 1),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith(
            (states) => Get.theme.primaryColor),
      )),
      shadowColor: Color.fromRGBO(0, 0, 0, 0.05999999865889549),
      inputDecorationTheme: InputDecorationTheme(
        isDense: true,
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11),
          borderSide: BorderSide(
            color: Color.fromRGBO(170, 175, 187, 1),
            width: 0,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 15.0,
        ),
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          color: Color.fromRGBO(115, 133, 143, 1),
          fontFamily: "Lexend",
          fontSize: 14,
        ),
        filled: true,
        focusColor: Colors.white,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11),
          borderSide: BorderSide(
            color: Color.fromRGBO(170, 175, 187, 1),
            width: 0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11),
          borderSide: BorderSide(
            color: Colors.transparent,
            width: 1,
          ),
        ),
      ),

      // appBarTheme: AppBarTheme(
      //   backgroundColor: Colors.white,
      //   centerTitle: false,
      //   toolbarTextStyle: TextStyle(
      //       fontSize: 20,

      //       // height: 0.8,

      //       fontWeight: FontWeight.w700,
      //       color: Colors.black),
      //   titleTextStyle: TextStyle(
      //     fontSize: 20,
      //     fontWeight: FontWeight.w700,
      //     color: Colors.black,
      //   ),
      // ),
      useMaterial3: true,
      // scaffoldBackgroundColor: Color.fromRGBO(215, 233, 237, 1),
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
        titleLarge: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.4,
            height: 0.33,
            fontFamily: "Lexend",
            color: Color.fromRGBO(69, 79, 99, 1)),
        titleSmall: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            height: 0.2,
            fontFamily: "Lexend",
            color: Color.fromRGBO(69, 79, 99, 1)),
      ),
      tabBarTheme: TabBarTheme(
          labelColor: Colors.black,
          labelStyle: TextStyle(
            fontSize: 14,
            height: 1.21,
            fontWeight: FontWeight.w600,
            fontFamily: "Lexend",
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 14,
            height: 1.21,
            fontWeight: FontWeight.w600,
            fontFamily: "Lexend",
          ),
          unselectedLabelColor: Color.fromRGBO(148, 158, 181, 1)
          // labelPadding: EdgeInsets.only(bottom: 10,left: 50)
          ));
}
