import 'package:esalmi_2/UI/chapterDetails/chapterDetailsScreen.dart';
import 'package:flutter/material.dart';

class chapterTtileWidget extends StatelessWidget {
 String title;
 int  index;
 chapterTtileWidget(this.title,this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
    onTap: (){
    Navigator.of(context).pushNamed(chapterDetailsScreen.route,
    arguments: chapterDetailsArg(title, index)
    );
    },
      child: Container(
        padding: EdgeInsets.all(8),
          alignment: Alignment.center,

          child: Text(title,
          style: Theme.of(context).textTheme.titleMedium
          )),
    );
  }
}
