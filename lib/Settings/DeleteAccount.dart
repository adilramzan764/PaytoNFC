import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget DeleteAccount_Alert(BuildContext context) {
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
              'Delete Account',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff132183)
              ),
            ),
          ),
          SizedBox(height: 20,),
          Center(child: Text('Are you sure? All flights and\n information wil bw deleted. That can’t\n be undone. ',textAlign: TextAlign.center,),),
          SizedBox(height: 40,),

          Row(
            children: <Widget>[
              Expanded(
                flex: 1,child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10)),
                  border: Border.all(
                    color: Colors.grey,
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
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10)),
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
              Expanded(
                flex: 1,
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(10)),
                      border: Border.all(color: Colors.grey)
                  ),
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(10)),
                      ),
                    ),
                    child: Text(
                      'Delete',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ),
  );
}

