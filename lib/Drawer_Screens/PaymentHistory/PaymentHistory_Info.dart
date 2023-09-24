import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentHistory_Info {
  final String pic;
  final String orderto;
  final String date;
  final String price;

  PaymentHistory_Info(this.pic, this.orderto, this.date, this.price);
}

Widget PaymentHistory_Widget(PaymentHistory_Info info) {
  return InkWell(
    onTap: (){},
    child: Container(
      height: 70,
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
                image: AssetImage(info.pic),
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
                info.orderto,
                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                "${info.date}",
                style: TextStyle(fontSize: 13),
              ),

            ],
          ),
          Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  info.price,
                  style: TextStyle(fontSize: 16,color: Color(0xff132183), fontWeight: FontWeight.w500),
                ),
              ))
        ],
      ),
    ),
  );
}
