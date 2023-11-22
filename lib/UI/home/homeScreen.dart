import 'package:esalmi_2/UI/home/hadeth/hadethTap.dart';
import 'package:esalmi_2/UI/home/quran/quranTap.dart';
import 'package:esalmi_2/UI/home/radio/radioTap.dart';
import 'package:esalmi_2/UI/home/settings/settingsTab.dart';
import 'package:esalmi_2/UI/home/tasbh/tasbhTap.dart';
import 'package:esalmi_2/UI/myThemData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static String routeName='homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTapIndix=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:DecorationImage(
          image: AssetImage(
            MyThemData.isDarkEnable ?
            'assets/image/main_background_dark.png':
            'assets/image/img.png'   ),
              fit: BoxFit.fill
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title:  Text(AppLocalizations.of(context)!.app_name,),
          backgroundColor:Colors.transparent,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedTapIndix,
          onTap: (index){
            setState(() {
              selectedTapIndix=index;
            });
          },
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/image/quran.png')),label:
            AppLocalizations.of(context)!.quran),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/image/quran_quran_svgrepo_com.png')),label:
            AppLocalizations.of(context)!.hadeth),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/image/sebha.png')),label:
            AppLocalizations.of(context)!.tasbeh),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/image/radio.png')),label:
            AppLocalizations.of(context)!.radio),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: Icon(Icons.settings),label: 'settings'),

          ],
        ),
        backgroundColor: Colors.transparent,
        body: taps[selectedTapIndix],
      ),
    );
  }
  List<Widget>taps=[
    quranTap(),
    hadethTap(),
    tasbhTap(),
    radioTap(),
    SettingsTab()
  ];
}

