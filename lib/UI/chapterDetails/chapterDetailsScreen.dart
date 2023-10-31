import 'package:esalmi_2/UI/chapterDetails/verseWiget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class chapterDetailsScreen extends StatefulWidget {
  static String route='chapterDetailsScreen';

  @override
  State<chapterDetailsScreen> createState() => _chapterDetailsScreenState();
}
class _chapterDetailsScreenState extends State<chapterDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)
    ?.settings.arguments as chapterDetailsArg;
    if(verse.isEmpty){
      loudfile(arg.index);
    }
    return Container(decoration: const BoxDecoration(
        image:DecorationImage(
            image: AssetImage('assets/image/img.png'),
            fit: BoxFit.fill
        )
    ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(arg.title),
          ),
          body:
         verse.isEmpty?const Center(child: CircularProgressIndicator()) :
          Card(
            margin: EdgeInsets.symmetric(vertical: 48,horizontal: 24),
            child: ListView.separated(itemBuilder: (context,index){
             return verseWidget(verse[index],index);
            },
                separatorBuilder: (context,index)=>Container(
              color: Theme.of(context).primaryColor,
          width: double.infinity,
          height: 3 ,
          margin: EdgeInsets.symmetric(horizontal: 50),
        ),itemCount: verse.length,),
          )
        ));
  }

  List<String>verse=[];
  void loudfile(int index)async{
    String fileContent  = await  rootBundle.loadString('assets/files/${index+1}.txt');
   verse= fileContent.split('\n');
   print(fileContent);
   setState(() {
   });
  }
}
class chapterDetailsArg {
  String title ;
  int index ;
  chapterDetailsArg(this.title,this.index);
}
