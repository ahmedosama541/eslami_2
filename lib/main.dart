import 'package:esalmi_2/UI/chapterDetails/chapterDetailsScreen.dart';
import 'package:esalmi_2/UI/hadethDetails/hadethDetailsScreen.dart';
import 'package:esalmi_2/UI/home/homeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
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
            onSecondary: Colors.black
        ),
        useMaterial3: true,
        cardTheme: CardTheme(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
            elevation: 18
        )
      ),
      routes: {
        HomeScreen.routeName :(_)=> HomeScreen(),
        chapterDetailsScreen.route:(_)=>chapterDetailsScreen(),
        hadethDetailsScreen.route:(_)=>hadethDetailsScreen()
      },
      initialRoute: HomeScreen.routeName,
      home: HomeScreen(),
    );
  }
}

