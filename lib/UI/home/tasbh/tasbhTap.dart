import 'package:esalmi_2/UI/home/quran/quranTap.dart';
import 'package:flutter/material.dart';

class tasbhTap extends StatefulWidget {

  const tasbhTap({super.key});

  @override
  State<tasbhTap> createState() => _tasbhTapState();
}

class _tasbhTapState extends State<tasbhTap> {
  int tasbehCount = 0;
  List<String>tasbeh=[
    'سبحان الله',
    'الحمدلله',
    'لا اله الا الله ',
    'الله اكبر',
    'لا حول ولا قوه الا بالله',
  ];
int index = 0 ;
double angle = 0;
  onTap(){
    angle+=.2;
    tasbehCount++;
    if(tasbehCount%33==0){
      tasbehCount=0;
      index++;
    }
    if(index==tasbeh.length){
      index=0;
    }
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity ,
      child: Container(
        child: Column(

          children: [
           Transform.rotate(
             angle: angle,
              child: Stack(
              alignment: Alignment.topCenter,
                children: [
                  Image.asset('assets/image/head of seb7a.png'),
                  Padding(
                    padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height*.085,bottom: 26),
                    child: Image.asset('assets/image/body of seb7a.png'),
                  ),
                ],
              ),
            ),
            Center(
              child: Text('عدد التسبيحات ',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600
              ),),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xDFB7935F),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Text('$tasbehCount',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,

                ),
              ),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: onTap
              ,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color(0xDFB7935F),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Text(tasbeh[index],
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,

                  ),
                ),
              ),
            ),


          ],
        ) ,
      ),
    );
  }
}
