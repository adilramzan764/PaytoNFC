import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget Search_PaymentHistory(){
  return   Material(
    elevation: 2, // Set the elevation value for the shadow
    borderRadius: BorderRadius.circular(10.0),
    child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Color(0xff132183), width: 1),
        ),
        child: TextField(
          decoration: InputDecoration(
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              border: InputBorder.none,
              hintText: 'Search history',
              contentPadding: EdgeInsets.all(15),
              prefixIcon: Icon(CupertinoIcons.search,color: Colors.grey,)

          ),
          // onTap: _showGenderDropdown,

        )
    ),
  );
}

Widget Categories_PaymentHistory(){
  return Container(
    height: 300,
    width: double.infinity,
    child: Row(
      children: [
        Categories('assets/Refresh (1).svg','All'),
        Categories('assets/Arrow-Left.svg','Send'),
        Categories('assets/Arrow-down.svg','Recieve'),
        Categories('assets/failed.svg','Faild'),

      ],
    )
  );
}
Widget Categories(
    String icon,
    String text,
    ){
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: InkWell(
        onTap: (){},
        child: Column(
             children: [
             Container(
             height: 90,
             // width: 100,
             decoration: BoxDecoration(
             borderRadius:  BorderRadius.circular(20),
        color: Color(0xff132183),

        ),
        child: Center(
        child:Transform.scale(
            scale: 1.7,
            child: SvgPicture.asset(icon)),
        ),
        ),
        Text(text)
        ]),
      ),
    ),
  );
}
