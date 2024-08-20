 import 'package:flutter/material.dart';

// Define your custom colors
class AppColors {
  static const Color primaryColor = Color(0xFF00796B);  
  static const Color primaryColorLight = Color(0xFF48A999);  
  static const Color secondaryColor = Color(0xFFFFC107); // Amber color
  static const Color backgroundColor = Color(0xFFFFFFFF); // White
  static const Color buttonColor = Color(0xFF00796B); // Teal
  static const Color buttonTextColor = Color(0xFFFFFFFF); // White
  static const Color greyBackground = Color(0xFFF5F5F5); // Light grey
  static const Color bottomNavBarBackground = Color(0xFF005a54); // Bottom navigation bar background color
  static const Color bottomNavBarSelectedItemColor = Color(0xFFfec224); // Selected item color
  static const Color bottomNavBarUnselectedItemColor = Color(0xFFFFFFFF); // Unselected item color
}

ThemeData buildAppTheme() {
  return ThemeData(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: AppColors.primaryColor,
      secondary: AppColors.secondaryColor,
    ),
    fontFamily: 'Poppins',
    textTheme: TextTheme(
      headlineSmall: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold, color: AppColors.primaryColor),
      headlineMedium: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic, color: AppColors.primaryColor),
      // headlineLarge: TextStyle(fontSize: 14.0, fontFamily: 'Poppins', color: Colors.black),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        
        backgroundColor: WidgetStateProperty .all(AppColors.buttonColor),
        foregroundColor: WidgetStateProperty .all(AppColors.buttonTextColor),
        textStyle: WidgetStateProperty .all(
          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        shape: WidgetStateProperty .all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primaryColor,
      titleTextStyle: TextStyle(
        color: Color(0xFF005a54),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      fontFamily: 'Poppins', // Ensure font is applied here

      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.bottomNavBarBackground,
      selectedItemColor: AppColors.bottomNavBarSelectedItemColor,
      unselectedItemColor: AppColors.bottomNavBarUnselectedItemColor,
      elevation: 8,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
 
    ),
  );
}

