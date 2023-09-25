import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Notification_widget.dart';
import 'Notifications_info.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {

  final List<Notifications_info> notifications = [
    Notifications_info(
      image: 'assets/mobile.svg',
      notification: 'Your recharge is successfully done.',
      time: '3 min ago',
      read: false,
    ),
    Notifications_info(
      image: 'assets/Reward.svg',
      notification: 'You got a rewards.',
      time: '7 min ago',
      read: false,
    ),
    Notifications_info(
      image: 'assets/card.svg',
      notification: 'Your credit bill is done.',
      time: '15 min ago',
      read: false,
    ),
    Notifications_info(
      image: 'assets/bill.svg',
      notification: 'Electricity bill is done.',
      time: '30 min ago',
      read: true,
    ),
    Notifications_info(
      image: 'assets/netflix.svg',
      notification: 'Your Netflix bill is done.',
      time: 'yesterday',
      read: true,
    ),
    Notifications_info(
      image: 'assets/uber.svg',
      notification: 'Uber bill is done.',
      time: 'yesterday',
      read: true,
    ),
    Notifications_info(
      image: 'assets/netflix.svg',
      notification: 'Your Netflix bill is done.',
      time: 'yesterday',
      read: true,
    ),
    Notifications_info(
      image: 'assets/hotel.svg',
      notification: 'Your Hotel bill is done.',
      time: 'yesterday',
      read: true,
    ),
    // Add more notifications here
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(CupertinoIcons.arrow_left)),
                Text(
                  'Notifications',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 40,
                  width: 40,
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Row(
              children: [
                Text("3 unread",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                Expanded(child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(onPressed: () {  },
                  child: Text('Mark all as read',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Color(0xff132183)))),
                ))
              ],
            ),

        Expanded(
          child: ListView.builder(
            itemCount: notifications.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Notification_info(context, notifications[index]),
              );
            },
          ),
        ),
             ],
        ),
      ),
    );
  }
}
