import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget Rewards_Info(String image,String price){
  return Expanded(
    child: Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover)
          ),

        ),
        SizedBox(height: 5,),
        Text(price,style: TextStyle(fontSize: 16),)
      ],
    ),
  );
}