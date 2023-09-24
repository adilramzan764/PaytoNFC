import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Notifications_info.dart';

Widget Notification_info(BuildContext context,Notifications_info notification) {
  return Column(
    children: [
      Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          color: notification.read ?Colors.white: Colors.blue.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: notification.read ? Colors.grey: Color(0xff132183))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xff132183)),
                child: Center(
                  child: Center(
                    child: Transform.scale(
                        scale: 0.7,
                        child: SvgPicture.asset(notification.image,color: Colors.white,)),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(notification.notification),
              if(!notification.read)
              Expanded(
                  child: Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.circle,
                  color: Colors.green,
                  size: 17,
                ),
              ))
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 5.0,right: 3),
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            notification.time,
            style: TextStyle(color: Color(0xff132183), fontSize: 13),
          ),
        ),
      )
    ],
  );
}
