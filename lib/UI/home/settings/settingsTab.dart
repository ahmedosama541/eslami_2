import 'package:esalmi_2/UI/home/settings/themBottomSheet.dart';
import 'package:esalmi_2/UI/home/settings/themLangageSheet.dart';
import 'package:flutter/material.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(
        vertical: 64,
        horizontal: 16
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Theme'),
          InkWell(
            onTap: (){
              showThemBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Theme.of(context).dividerColor,
                  width: 1

                )
              ),
                child: Text('light',
                  style: Theme.of(context).textTheme.titleMedium,
                )),
          ),
          SizedBox(height: 18,),
          Text('language'),
          InkWell(
            onTap: (){
              showLanguageBottomSheet();
            },
            child: Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                decoration: BoxDecoration(
                    color:  Theme.of(context).colorScheme.background,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: Theme.of(context).dividerColor,
                        width: 1

                    )
                ),
                child: Text('English',style: Theme.of(context).textTheme.titleMedium,
                  )),
          )
        ],
      ),
    );
  }

  void showThemBottomSheet() {
    showModalBottomSheet(context: context,
      builder:
    (context){
      return themBottomSheet();
    },);
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(context: context, builder:
    (context){
      return ThemlanguageSheet();
    });
  }
}
