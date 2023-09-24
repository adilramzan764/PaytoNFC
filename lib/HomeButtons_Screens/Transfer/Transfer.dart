import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Payment_utils/Category_Widget.dart';
import 'SendMoney_ContactInfo.dart';

import 'RecipientSelection.dart';
import 'RequestMoney_Selection.dart';

class Transfer extends StatefulWidget {
  const Transfer({Key? key}) : super(key: key);

  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  int selectedButtonIndex = 0; // Initialize with 0, meaning the first button is selected

  void selectButton(int index) {
    setState(() {
      selectedButtonIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(CupertinoIcons.arrow_left),
                ),
                Text(
                  'Transfer',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 40, width: 40),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Categories('assets/Arrow-Left.svg', 'Send Money', selectedButtonIndex == 0, 0, selectButton),
                Categories('assets/Arrow-down.svg', 'Request Money', selectedButtonIndex == 1, 1, selectButton),
              ],
            ),
            if (selectedButtonIndex == 0)
              RecipientSelection(),
            if (selectedButtonIndex == 1)
              RequestMoney_Selection(),




          ],
        ),
      ),
    );
  }
}
