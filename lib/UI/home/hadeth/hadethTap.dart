import 'package:esalmi_2/UI/home/hadeth/Hadeth.dart';
import 'package:esalmi_2/UI/home/hadeth/hadethTitleWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class hadethTap extends StatefulWidget {

  @override
  State<hadethTap> createState() => _hadethTapState();
}

class _hadethTapState extends State<hadethTap> {
  @override
  Widget build(BuildContext context) {
    if(allAhadeth.isEmpty
    ){loudHadethFile();}

    return Column(
      children: [
      Expanded(
        flex: 1,
          child: Image.asset('assets/image/head_ahdeth.png')),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(
                  color: Theme.of(context).primaryColor
                )
              )
            ),
            child: Text('hadeth'
            ,style: TextStyle(
                fontSize: 25
              ),)),

        Expanded(
          flex: 3,
          child: allAhadeth.isEmpty?Center(child: CircularProgressIndicator()):
          ListView.separated(itemBuilder:(context,index){
            return HadethTitleWidget(allAhadeth[index]);
          }
              , separatorBuilder: (context,index)=>Container(
                color: Theme.of(context).primaryColor,
                width: double.infinity,
                height: 3 ,
                margin: EdgeInsets.symmetric(horizontal: 50),
              )
              , itemCount: allAhadeth.length),
        )
      ],
    );
  }

   List<Hadeth>allAhadeth=[];

  void loudHadethFile()async{
    String fileContent = await  rootBundle.loadString('assets/files/ahadeth.txt');
    List<String>hadethList=fileContent.trim().split('#');
    for(int i = 0 ; i<hadethList.length;i++){
      String hadethContent= hadethList[i];
      List<String>hadethLines=hadethContent.trim().split('\n');
      String title = hadethLines[0];
      hadethLines.remove(0);
      String content = hadethLines.join();
      Hadeth hadeth = Hadeth(title, content);
      allAhadeth.add(hadeth);
      setState(() {
      });
       }
       //List<String>hadethList=fileContent.trim().split('#');
    //        for(int i = 0 ; i < hadethList.length;i++){
    //          String singleHadeth= hadethList[i];
    //          List<String>hadethLines= singleHadeth.trim().split('\n');
    //          String title = hadethLines[0];
    //          hadethLines.remove(0);
    //          String content = hadethLines.join();


  }
}
