import 'package:flutter/material.dart';

class themBottomSheet extends StatefulWidget {
  const themBottomSheet({super.key});

  @override
  State<themBottomSheet> createState() => _themBottomSheetState();
}

class _themBottomSheetState extends State<themBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         getSelectedItem('light'),
          getUnselectedItem('Dark')
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
    Text(text,
        style:Theme.of(context).textTheme.bodyMedium );
  }
}
