import 'package:flutter/material.dart';

class MyThemData{
 static bool isDarkEnable = false;
  static Color lightPrimary = Color(0xFFB7935F);
  static Color darkPrimary = Color(0xff141A2E);
  static Color darkSecondary = Color(0xFFFACC1D);
 static ThemeData lightTheme = ThemeData(
   textTheme: TextTheme(
     headlineSmall: TextStyle(
         fontWeight: FontWeight.w600,
         fontSize: 25,
         color: Colors.black
     ),
     titleMedium: TextStyle(fontWeight: FontWeight.w400,
         fontSize: 25,
       color: Colors.black
     ),
       bodyMedium: TextStyle(
           fontWeight: FontWeight.w400,
           fontSize: 20,
           color: Colors.black
   )

   ),
      appBarTheme:const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 28,
            color: Colors.black,
          )
      ),
      bottomNavigationBarTheme:  BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(
              size: 32
          )
      ),
      scaffoldBackgroundColor: Colors.transparent,

      colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFB7935F),
          primary:Color(0xFFB7935F) ,
          secondary: Color(0xDFB7935F),
          onPrimary: Colors.white,
          onSecondary: Colors.black,
        background: Colors.white
      ),
      dividerColor: lightPrimary,
      bottomSheetTheme:BottomSheetThemeData(
        backgroundColor: Colors.white
      ) ,
      useMaterial3: true,
      cardTheme: CardTheme(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          elevation: 18
      )
  );
   static ThemeData darkTheme = ThemeData(
       textTheme: TextTheme(
           headlineSmall: TextStyle(
               fontWeight: FontWeight.w600,
               fontSize: 25,
               color: Colors.white
           ),
           titleMedium: TextStyle(fontWeight: FontWeight.w400,
               fontSize: 25,
               color: Colors.white
           ),
           bodyMedium: TextStyle(
               fontWeight: FontWeight.w400,
               fontSize: 20,
               color: Colors.white
           )

       ),
      appBarTheme:const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 28,
            color: Colors.white,
          ),
        iconTheme: IconThemeData(color: Colors.white)
      ),
      bottomNavigationBarTheme:  BottomNavigationBarThemeData(
          selectedItemColor: darkSecondary,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(
              size: 32
          )
      ),
      scaffoldBackgroundColor: Colors.transparent,

      colorScheme: ColorScheme.fromSeed(seedColor: darkPrimary,
          primary:darkPrimary ,
          secondary:darkSecondary,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
        background: darkPrimary
      ),
      dividerColor: darkSecondary,
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: darkPrimary
      ),
      useMaterial3: true,
      cardTheme: CardTheme(
          color: darkPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          elevation: 18
      )
  );
}