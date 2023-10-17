import 'package:esalmi_2/UI/home/hadeth/hadethTap.dart';
import 'package:esalmi_2/UI/home/quran/quranTap.dart';
import 'package:esalmi_2/UI/home/radio/radioTap.dart';
import 'package:esalmi_2/UI/home/tasbh/tasbhTap.dart';
import 'package:flutter/material.dart';

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
          image: AssetImage('assets/image/img.png'),
              fit: BoxFit.fill
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Islami',),
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
                icon: ImageIcon(AssetImage('assets/image/quran.png')),label: 'Quran'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/image/quran_quran_svgrepo_com.png')),label: 'hadeth'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/image/sebha.png')),label: 'sebha'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/image/radio.png')),label: 'radio'),

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
  ];
}
