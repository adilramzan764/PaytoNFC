import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Drawer_Screens/PaymentHistory/PaymentHistory_All.dart';
import 'CardInfo.dart';

class MyCard extends StatefulWidget {
   MyCard({Key? key}) : super(key: key);

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  int selectedButtonIndex = 0;
 // Initialize with 0, meaning the first button is selected
   List<Card_Info> cardInfoList = [
     Card_Info('AXIS BANK', '*** *** 65 4563', '\$1,000.00', '15/25'),
     Card_Info('SBI BANK', '*** *** 65 4563', '\$500.00', '5/30'),
     Card_Info('SBI BANK', '*** *** 65 4563', '\$500.00', '5/30'),
     // Add more card info here
   ];
  int seletedPaymentCategory = 0; // Initialize with -1, meaning no button is selected

  void selectButton(int index) {
    setState(() {

      seletedPaymentCategory = index;

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
                  'My Card',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
              height: 210,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cardInfoList.length, // Replace with your actual list of Card_Info objects
                itemBuilder: (context, index) {
                  return Card_Widget(
                    context,
                    cardInfoList[index], // Pass the Card_Info object
                    selectedButtonIndex == index, // Check if this card is selected
                    index, // Pass the index
                        (selectedIndex) {
                      setState(() {
                        selectedButtonIndex = selectedIndex; // Update the selected button index
                      });
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Payment History",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
            ),
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child:           Categories_PaymentHistory(seletedPaymentCategory, selectButton),

            ),
            SizedBox(height: 15,),
            Divider(thickness: 1,),

            Expanded(
                // height: MediaQuery.of(context).size.height,
                child: PaymentHistory_All()),
          ],
        ),
      ),
    );
  }
}
