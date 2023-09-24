import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SendMoney_ContactInfo {
  final String pic;
  final String name;

  SendMoney_ContactInfo(this.pic, this.name);
}

Widget SendMoneyContact_Widget(SendMoney_ContactInfo contact) {
  return Column(
    children: [
      Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey),
          image: DecorationImage(
            image: AssetImage(contact.pic),
            fit: BoxFit.cover,
          ),
        ),
      ),
      SizedBox(height: 8),
      Text(
        contact.name,
        style: TextStyle(color: Color(0xff132183)),
      ),
    ],
  );
}