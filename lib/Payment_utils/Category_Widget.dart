import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget Categories(
    String icon,
    String text,
    bool isSelected,
    int index,
    void Function(int) onTap,
    ) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: InkWell(
        onTap: () {
          onTap(index); // Call the selectButton function with the index
        },
        child: Column(
          children: [
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: isSelected ? Color(0xff132183) : Colors.white,
                  border: Border.all(color: isSelected ? Colors.white: Color(0xff132183) )
              ),
              child: Center(
                child: Transform.scale(
                    scale: 1.7,
                    child: SvgPicture.asset(
                      icon,
                      color: isSelected ? Colors.white : Colors.black,
                    )),
              ),
            ),
            SizedBox(height: 10,),
            Text(text,style: TextStyle(color:isSelected ? Colors.black : Colors.grey),),
          ],
        ),
      ),
    ),
  );
}