import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Offers_Widget.dart';
import 'Offers_info.dart';
import 'Rewards_info.dart';

class RewardsandCashBacks extends StatelessWidget {
   RewardsandCashBacks({Key? key}) : super(key: key);
  final List<Offers_info> offers = [
    Offers_info(image: 'assets/uber.jpg', name: 'Uber', off_offer: '5%', spend: '\$65',) ,
    Offers_info(image: 'assets/crownhotel.jpg', name: 'Crown Hotel', off_offer: '15%', spend: '\250',),
    Offers_info(image: 'assets/olacab.jpg', name: 'Ola Cab', off_offer: '5%', spend: '\$20',)  ,
    Offers_info(image: 'assets/netflix1.jpg', name: 'Netflix', off_offer: '10%', spend: '\$50',),
    // Add more offers here
// Add more offers here
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
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
                    'Rewards & CashBacks',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40,
                    width: 40,
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Center(
                child: Text(
                  'Total Rewards',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff132183)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  '\$35.00',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff132183)),
                ),
              ),
              SizedBox(
                height: 40,
              ),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10.0),
  child:   Row(

    mainAxisAlignment: MainAxisAlignment.center,

    children: [

        Rewards_Info('assets/uber.jpg','\$05'),

        Rewards_Info('assets/olacab.jpg','\$05'),

        Rewards_Info('assets/crownhotel.jpg','\$10'),

        Rewards_Info('assets/netflix1.jpg','\$15'),

    ],

  ),
),
              SizedBox(height: 30,),
              Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child:         Text('Sponsored',style: TextStyle(fontSize: 13,color: Colors.grey),)
                    ,
                  ),
                  SizedBox(width: 10,),
                  SvgPicture.asset('assets/failed.svg',height: 20,width: 20,)
                ],
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child:         Text('Offers for you',style: TextStyle(fontSize: 18,color: Color(0xff3A3A3A),fontWeight: FontWeight.w500),),


              ),
              SizedBox(height: 10,),
              Divider(thickness: 2,),
          Container(
            height: 110*offers.length.toDouble(),
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
            itemCount: offers.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Offers_Widget(offers[index]),
                  SizedBox(height: 5,),
                  Divider(thickness: 1,)
                ],
              );
            },
        ),
          )
            ],
          ),
        ),
      ),
    );
  }
}
