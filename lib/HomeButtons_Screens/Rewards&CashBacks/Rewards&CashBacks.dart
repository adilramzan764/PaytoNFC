import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Rewards_info.dart';

class RewardsandCashBacks extends StatelessWidget {
  const RewardsandCashBacks({Key? key}) : super(key: key);

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
              Align(
                alignment: Alignment.centerLeft,
                child:         Text('Sponsored',style: TextStyle(fontSize: 13,color: Colors.grey),)
                ,
              )
            ],
          ),
        ),
      ),
    );
  }
}
