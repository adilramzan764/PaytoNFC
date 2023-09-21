import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

Widget faqs(
String text1,
    String text2,
){
  return  Row(
    children: [
      SvgPicture.asset('assets/support.svg',height: 40,width: 40,color: Color(0xff132183),),
      SizedBox(width: 15,),
      Text(
        text1,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
      Text(
        text2,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,color: Color(0xff132183)),
      ),
      Text(
        '?',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      )
    ],
  );
}

