import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RequestMoney_ContactInfo {
  final String pic;
  final String name;
  final String disc;
  final String price;

  RequestMoney_ContactInfo(this.pic, this.name, this.disc, this.price);
}

Widget RequestMoneyContact_Widget(RequestMoney_ContactInfo contact) {
  return InkWell(
    onTap: (){},
    child: Container(
      height: 80,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
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
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15,),
              Text(
                contact.name,
                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),
              ),
              SizedBox(height: 8),
              Text(
                "${contact.disc}",
                style: TextStyle(fontSize: 13),
              ),

            ],
          ),
          Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  contact.price,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ))
        ],
      ),
    ),
  );
}
