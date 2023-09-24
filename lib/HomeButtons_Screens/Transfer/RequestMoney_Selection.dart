import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'RequestMoney_ContactInfo.dart';

class RequestMoney_Selection extends StatelessWidget {
   RequestMoney_Selection({Key? key}) : super(key: key);
  List<RequestMoney_ContactInfo> requestMoneyContacts = [
    RequestMoney_ContactInfo(
      'assets/model1.jpg',
      'John Doe',
      'Please send me \$50 for dinner.',
      '\$50.00',
    ),
    RequestMoney_ContactInfo(
      'assets/model2.jpg',
      'Alice Smith',
      'Reimbursement for movie tickets.',
      '\$25.00',
    ),
    RequestMoney_ContactInfo(
      'assets/model3.jpg',
      'Bob Johnson',
      'Owe me \$30 for groceries.',
      '\$30.00',
    ),
    RequestMoney_ContactInfo(
      'assets/model4.jpg',
      'Alice Smith',
      'Reimbursement for movie tickets.',
      '\$25.00',
    ),
    RequestMoney_ContactInfo(
      'assets/model2.jpg',
      'Alice Smith',
      'Reimbursement for movie tickets.',
      '\$25.00',
    ),
    RequestMoney_ContactInfo(
      'assets/model2.jpg',
      'Alice Smith',
      'Reimbursement for movie tickets.',
      '\$25.00',
    ),
    RequestMoney_ContactInfo(
      'assets/model4.jpg',
      'Alice Smith',
      'Reimbursement for movie tickets.',
      '\$25.00',
    ),
    RequestMoney_ContactInfo(
      'assets/model4.jpg',
      'Alice Smith',
      'Reimbursement for movie tickets.',
      '\$25.00',
    ),

    // Add more contact info here
  ];
  @override
  Widget build(BuildContext context) {
    double listheight=requestMoneyContacts.length*85;

    return Column(
      children: [
        SizedBox(height: 20,),
        Row(
          children: [
            Text(
              "Requests",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'view all',
                    style: TextStyle(fontSize: 16, color: Color(0xff132183)),
                  ),
                ),
              ),
            ),
          ],
        ),


        Container(
          height: MediaQuery.of(context).size.height*0.62,
          child: ListView.builder(
            // physics: NeverScrollableScrollPhysics(),
            itemCount: requestMoneyContacts.length, // Replace 'yourList' with your actual list of contact data
            itemBuilder: (context, index) {
              return Column(
                children: [
                  RequestMoneyContact_Widget(requestMoneyContacts[index]),
                  SizedBox(height: 2,),
                  Divider(thickness: 1,)
                ],
              );
            },
          ),
        )

      ],
    );
  }
}
