import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'PaymentHistory_Info.dart';
import 'PaymentHistory_All.dart';
import '../../Utils/Search_TextField.dart';

class PaymentHistory extends StatefulWidget {
  const PaymentHistory({Key? key}) : super(key: key);

  @override
  State<PaymentHistory> createState() => _PaymentHistoryState();
}

class _PaymentHistoryState extends State<PaymentHistory> {

  int selectedButtonIndex = 0; // Initialize with -1, meaning no button is selected

  void selectButton(int index) {
    setState(() {

      selectedButtonIndex = index;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
                'Payment History',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
                width: 40,
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child:Search_TextField('Search history'),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child:           Categories_PaymentHistory(selectedButtonIndex, selectButton),

          ),
          SizedBox(height: 15,),
          Divider(thickness: 1,),

          Expanded(child: PaymentHistory_All()),
        ],
      ),

    );
  }
}
