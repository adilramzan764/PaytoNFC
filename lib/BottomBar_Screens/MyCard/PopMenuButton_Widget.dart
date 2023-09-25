import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget PopMenuButton_Widget(){
  return PopupMenuButton<String>(
    onSelected: (String value) {
      // Handle the selected option here
      if (value == 'Option 1') {
        // Handle Option 1
      } else if (value == 'Option 2') {
        // Handle Option 2
      } else if (value == 'Option 3') {
        // Handle Option 3
      }
    },
    itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
      const PopupMenuItem<String>(
        value: 'Option 1',
        child: Text('Card Details',style: TextStyle(color: Colors.grey),),
      ),
      const PopupMenuItem<String>(
        value: 'Option 2',
        child: Text('Add new card',style: TextStyle(color: Colors.grey)),
      ),
      const PopupMenuItem<String>(
        value: 'Option 3',
        child: Text('Add bank AC',style: TextStyle(color: Colors.grey)),
      ),
    ],
  )    ;
}