import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paytonfc/HomeButtons_Screens/Transfer/SendMoney.dart';

import '../../Drawer_Screens/PaymentHistory/PaymentHistory_All.dart';
import '../../Utils/CustomButton.dart';
import '../../Utils/Search_TextField.dart';
import 'SendMoney_ContactInfo.dart';

class RecipientSelection extends StatelessWidget {

  final List<SendMoney_ContactInfo> contacts = [
    SendMoney_ContactInfo('assets/model1.jpg', 'Mike'),
    SendMoney_ContactInfo('assets/model2.jpg', 'John'),
    SendMoney_ContactInfo('assets/model3.jpg', 'Alice'),
    SendMoney_ContactInfo('assets/model4.jpg', 'Mia'),
    SendMoney_ContactInfo('assets/model2.jpg', 'John'),
    SendMoney_ContactInfo('assets/model1.jpg', 'Mike'),
    // Add more contacts here
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text(
              "Choose Recipients",
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
        SizedBox(
          height: 10,
        ),
        Search_TextField("Search contacts..."),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: contacts.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: SendMoneyContact_Widget(contacts[index]),
              );
            },
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Divider(
          thickness: 2,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 110,
          height: 110,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey),
            image: DecorationImage(
              image: AssetImage('assets/model1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          'To Mike',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, ),
          child: CustomButton(
            text: 'Continue',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SendMoney()),
              );
            },
          ),
        ),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
