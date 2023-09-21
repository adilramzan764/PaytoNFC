import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomButton.dart';

Widget Logout_Alert(BuildContext context) {
  return Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
    ),
    elevation: 0.0, // No shadow
    backgroundColor: Colors.transparent, // Transparent background
    child: Container(
      margin: EdgeInsets.only(top: 20.0), // Increase top margin for height
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0), // Rounded corners
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(height: 30,),
          Center(
            child: Text(
              'Log Out?',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff132183)
              ),
            ),
          ),
          SizedBox(height: 30,),
          Center(child: Text('Are you sure you want to logout?')),
          SizedBox(height: 30,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xff26368E),
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                        color: Color(0xff26368E),
                      ),
                    ),
                  ),
                ),),
                SizedBox(width: 5,),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                     color: Color(0xffD31717)
                    ),
                    child: ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Log out',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20,)
        ],
      ),
    ),
  );
}

