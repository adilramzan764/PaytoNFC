import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget sendinvitation_Button(String icon,String text){
  return Column(
    children: [
      Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xff132183))
        ),
        child: Transform.scale(
            scale: 0.6,
            child: SvgPicture.asset(icon,)),
      ),
      SizedBox(height: 3,),
      Text(text,style: TextStyle(fontSize: 12),)
    ],
  );
}