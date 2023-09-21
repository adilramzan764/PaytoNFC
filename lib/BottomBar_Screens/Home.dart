import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Utils/HomeScreen_CustomButton.dart';
import 'MyDrawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  void openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  Builder(
                    builder: (BuildContext context) {
                      return IconButton(
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        icon: Icon(Icons.menu),
                      );
                    },
                  ),
                  Expanded(
                      child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Hello, John",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 40,
                    // Set the width of the rounded border rectangle
                    height: 40,
                    // Set the height of the rounded border rectangle
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        // Set the border radius
                        border: Border.all(color: Color(0xff132183)),
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/profilepic.jpg',
                            ),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "My PayTo Card",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff132183)),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  width: double.infinity,
                  // Adjust the width and height as needed
                  height: MediaQuery.of(context).size.height*0.23,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      end: Alignment.centerRight,
                      begin: Alignment.topCenter,
                      colors: [
                        Color(0xff26368E),
                        Color(0xff0D1448),
                      ],
                    ), // Circle background color
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20.0,
                          ),
                          child: Row(
                            children: [
                              Text("PayTo Credit Card",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Expanded(
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: SvgPicture.asset(
                                      "assets/cardtype.svg",
                                      height: 25,
                                      width: 30,
                                    )),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text("Outstanding Amount ",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white)),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text("\$12,548.00 ",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white)),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Text("Due on 05 Dec 2023",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.red)),
                              Expanded(
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      width: 150,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Color(0xffEAECFF),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.transparent,
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                        child: Text(
                                          "Add another Card",
                                          style: TextStyle(
                                              color: Color(0xff132183),
                                              fontSize: 13),
                                        ),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Make Payment",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff132183)),
              ),
              SizedBox(
                height: 20,
              ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child:HomeScreen_CustomButton(
                    onTap: () {
                      // Your onTap logic here
                    }, icon: 'assets/Qr Code.svg', buttonname: "Scan QR",

                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  flex: 1,
                  child:HomeScreen_CustomButton(
                    onTap: () {
                      // Your onTap logic here
                    }, icon: 'assets/nfc.svg', buttonname: 'NFC',

                  ),
                ),

              ],
            ),
          ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Payment Transfer",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff132183)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                // height: 100,
                width: 180,
                child: HomeScreen_CustomButton(
                  onTap: () {
                    // Your onTap logic here
                  }, icon: 'assets/transfer.svg', buttonname: 'Transfer',

                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Promotions",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff132183)),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child:HomeScreen_CustomButton(
                        onTap: () {
                          // Your onTap logic here
                        }, icon: 'assets/Reward.svg', buttonname: "Reward",

                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      flex: 1,
                      child:HomeScreen_CustomButton(
                        onTap: () {
                          // Your onTap logic here
                        }, icon: 'assets/Rewards.svg', buttonname: 'Rewards',

                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
        drawer: CustomDrawer(),

    );

  }

}
