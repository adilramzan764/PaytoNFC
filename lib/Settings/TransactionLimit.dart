import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Utils/CustomButton.dart';

class TransactionLimit extends StatefulWidget {
   TransactionLimit({Key? key}) : super(key: key);

  @override
  State<TransactionLimit> createState() => _TransactionLimitState();
}

class _TransactionLimitState extends State<TransactionLimit> {
// bool isselected1=false;
//
//    bool isselected2=false;
//
//    bool isselected3=true;

  int selectedButtonIndex = 2; // Initialize with -1, meaning no button is selected

  void selectButton(int index) {
    setState(() {
      if (selectedButtonIndex == index) {
        // If the same button is tapped again, unselect it
        selectedButtonIndex = -1;
      } else {
        // Otherwise, select the new button
        selectedButtonIndex = index;
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Padding(
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
                      'Transaction limit',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 40,
                      width: 40,
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Container(
                  height: 110,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Color(0xff132183))),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      SvgPicture.asset('assets/debit.svg'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Debit',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Expanded(
                          child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '\$10, 500.00',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff132183)),
                        ),
                      )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.chevron_down,
                            size: 20,
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Amount Limit',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    amountlimit(selectedButtonIndex == 0, '\$3000.00', 0),
                    amountlimit(selectedButtonIndex == 1, '\$6000.00', 1),
                    amountlimit(selectedButtonIndex == 2, '\$15000.00', 2),
                  ],
                ),
                Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 40),
                      child: CustomButton(
                        text: 'Continue',
                        onPressed: () {
                          // Navigator.pushAndRemoveUntil(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => MyBottomNavigationBar()),
                          //       (Route<dynamic> route) =>
                          //   false,
                          // );
                        },
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget amountlimit(bool isSelected, String text, int index) {
    return Container(
      decoration: isSelected
          ? BoxDecoration(
        color: Color(0xff132183),
        borderRadius: BorderRadius.circular(10),
      )
          : BoxDecoration(),
      child: TextButton(
        onPressed: () {
          selectButton(index);
        },
        child: Text(
          text,
          style: TextStyle(
            fontSize: 15,
            color: isSelected ? Colors.white : Colors.grey,
          ),
        ),
      ),
    );
  }
}
