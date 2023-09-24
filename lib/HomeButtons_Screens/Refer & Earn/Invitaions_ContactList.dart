import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Invitation_ContactInfo {
  final String pic;
  final String name;
  final String number;

  Invitation_ContactInfo(this.pic, this.name, this.number, );
}

Widget InvitationContact_Widget(Invitation_ContactInfo contact) {
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
                "${contact.number}",
                style: TextStyle(fontSize: 13,color: Colors.grey),
              ),

            ],
          ),
          Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 30,
                  width: 80,
                  color: Color(0xffEAECFF),
                  child: TextButton(
                    onPressed: () {  },
                    child: Text(
                      'Invite',
                      style: TextStyle(fontSize: 16,color: Color(0xff132183) ),
                    ),
                  ),
                ),
              ))
        ],
      ),
    ),
  );
}
