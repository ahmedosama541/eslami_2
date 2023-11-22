import 'package:flutter/material.dart';

class ThemlanguageSheet extends StatefulWidget {
  const ThemlanguageSheet({super.key});

  @override
  State<ThemlanguageSheet> createState() => _ThemlanguageSheetState();
}

class _ThemlanguageSheetState extends State<ThemlanguageSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getSelectedItem('English'),
          getUnselectedItem('العربيه')
        ],
      ),
    );

  }
  Widget getSelectedItem (String text){return
    Row(
      children: [
        Text(text,
           style: Theme.of(context).textTheme.bodyMedium?.copyWith(color:
    Theme.of(context).colorScheme.secondary)),
        Spacer(),
        Icon(Icons.check
          ,color: Theme.of(context).primaryColor,)
      ],
    );
  }

  Widget getUnselectedItem(String text){ return
    Text(text, style: Theme.of(context).textTheme.bodyMedium);
  }
}
