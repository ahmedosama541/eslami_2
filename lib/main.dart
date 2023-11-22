import 'package:esalmi_2/UI/chapterDetails/chapterDetailsScreen.dart';
import 'package:esalmi_2/UI/hadethDetails/hadethDetailsScreen.dart';
import 'package:esalmi_2/UI/home/homeScreen.dart';
import 'package:esalmi_2/UI/myThemData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
      theme: MyThemData.lightTheme,
      darkTheme: MyThemData.darkTheme,
      themeMode:ThemeMode.light ,
      routes: {
        HomeScreen.routeName :(_)=> HomeScreen(),
        chapterDetailsScreen.route:(_)=>chapterDetailsScreen(),
        hadethDetailsScreen.route:(_)=>hadethDetailsScreen()
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: const[
        Locale('en'), // English
        Locale('ar'), // Spanish
      ],
      locale: Locale('ar'),
      initialRoute: HomeScreen.routeName,
      home: HomeScreen(),
    );
  }

}

