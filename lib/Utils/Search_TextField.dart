import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Search_TextField(String hinttext) {
  return Material(
    elevation: 2,
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
          hintText: hinttext,
          contentPadding: EdgeInsets.all(15),
          prefixIcon: Icon(
            CupertinoIcons.search,
            color: Colors.grey,
          ),
        ),
      ),
    ),
  );
}
