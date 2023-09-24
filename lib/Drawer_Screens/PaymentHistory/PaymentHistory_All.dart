import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Payment_utils/Category_Widget.dart';
import 'PaymentHistory_Info.dart';



class PaymentHistory_All extends StatelessWidget {
  List<PaymentHistory_Info> paymentHistoryList = [
    PaymentHistory_Info('assets/uber.jpg', 'Paid for order to Uber', '2023-09-20', '\$50.00'),
    PaymentHistory_Info('assets/crownhotel.jpg', 'Paid for order to Hotel', '2023-09-18', '\$232.00'),
    PaymentHistory_Info('assets/netflix.jpg', 'Netflix Account', '2023-09-15', '\$30.00'),
    PaymentHistory_Info('assets/olacab.jpg', 'Paid for order to Ola Cab', '2023-09-15', '\$500.00'),
    PaymentHistory_Info('assets/uber.jpg', 'Paid for order to Uber', '2023-09-20', '\$50.00'),
    PaymentHistory_Info('assets/crownhotel.jpg', 'Paid for order to Hotel', '2023-09-18', '\$232.00'),
    PaymentHistory_Info('assets/netflix.jpg', 'Netflix Account', '2023-09-15', '\$30.00'),
    PaymentHistory_Info('assets/olacab.jpg', 'Paid for order to Ola Cab', '2023-09-15', '\$500.00'),


    // Add more payment history info here
  ];

  @override
  Widget build(BuildContext context) {
    return
      // height: MediaQuery.of(context).size.height*0.56,

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child:  ListView.builder(
                // physics: NeverScrollableScrollPhysics(),
                itemCount: paymentHistoryList.length, // Replace 'yourList' with your actual list of contact data
                shrinkWrap: true, // Set shrinkWrap to true

                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      PaymentHistory_Widget(paymentHistoryList[index]),
                      SizedBox(height: 2,),
                      Divider(thickness: 1,),
                      if(index==paymentHistoryList.length-1)
                        SizedBox(height: 20,)

                    ],
                  );
                },
              ),


          );



  }
}

Widget Categories_PaymentHistory(int selectedButtonIndex, void Function(int) selectButton) {
  return Container(
    height: 120,
    width: double.infinity,
    child: Row(
      children: [
        Categories(
          'assets/Refresh (1).svg',
          'All',
          selectedButtonIndex == 0,
          0,
          selectButton,
        ),
        SizedBox(width: 5,),
        Categories(
          'assets/Arrow-Left.svg',
          'Send',
          selectedButtonIndex == 1,
          1,
          selectButton,
        ),
        SizedBox(width: 5,),

        Categories(
          'assets/Arrow-down.svg',
          'Receive',
          selectedButtonIndex == 2,
          2,
          selectButton,
        ),
        Categories(
          'assets/failed.svg',
          'Failed',
          selectedButtonIndex == 3,
          3,
          selectButton,
        ),
      ],
    ),
  );
}


