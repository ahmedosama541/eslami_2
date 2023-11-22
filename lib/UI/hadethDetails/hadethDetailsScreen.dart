import 'package:esalmi_2/UI/home/hadeth/Hadeth.dart';
import 'package:esalmi_2/UI/myThemData.dart';
import 'package:flutter/material.dart';

class hadethDetailsScreen extends StatelessWidget {
  static const String route = 'hadethDetailsScreen';
  const hadethDetailsScreen({super.key});


  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return
      Container(decoration:  BoxDecoration(
        image:DecorationImage(
            image: AssetImage( MyThemData.isDarkEnable ?
            'assets/image/main_background_dark.png':
            'assets/image/img.png' ),
            fit: BoxFit.fill
        )
    ),
      child: Scaffold(

          appBar: AppBar(
            title: Text(args.title,),
          ),
          body:
          Column(
            children: [
              Expanded(
                child: Card(
                  margin: EdgeInsets.symmetric(vertical: 48,horizontal: 24),
                      child:
                          SingleChildScrollView(
                            child: Text(args.Content,
                            textAlign: TextAlign.center,
                            style:Theme.of(context).textTheme.bodyMedium,),
                          )
                      

                ),
              ),
            ],
          )
      ),
    );
  }
}

