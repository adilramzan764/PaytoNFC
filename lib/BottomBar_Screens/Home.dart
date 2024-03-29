import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paytonfc/HomeButtons_Screens/QR%20Pay/QR_Pay.dart';

import '../CreatePaymentProfile/CreatePaymentProfile.dart';
import '../HomeButtons_Screens/NFCPay/HowToPay.dart';
import '../HomeButtons_Screens/QR Pay/QRScanner.dart';
import '../HomeButtons_Screens/Refer & Earn/Refer.dart';
import '../HomeButtons_Screens/Rewards&CashBacks/Rewards&CashBacks.dart';
import '../HomeButtons_Screens/Transfer/Transfer.dart';
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


  // @override
  // void initState() {
  //   super.initState();
  //   initializeCamera();
  // }
  //
  // void initializeCamera() async {
  //   final camera = await getFirstCamera();
  //   if (camera != null) {
  //     setState(() {
  //       // Store the camera object in your state
  //       selectedCamera = camera;
  //     });
  //   } else {
  //     // Handle the case where no cameras are available
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 30,
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
                height: 20,
              ),
              Text(
                "My PayTo Card",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff132183)),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  width: double.infinity,
                  // Adjust the width and height as needed
                  height: MediaQuery.of(context).size.height*0.21,
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
                                      width: MediaQuery.of(context).size.width*0.34,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Color(0xffEAECFF),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => CreatePaymentProfile()),
                                            // Replace NewScreen() with the screen you want to navigate to.

                                          );
                                        },
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
                                              fontSize: 11),
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
                height: 15,
              ),
              Text(
                "Make Payment",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff132183)),
              ),
              SizedBox(
                height: 10,
              ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child:HomeScreen_CustomButton(
                    onTap: ()  {

                      Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => const QRViewExampleState(),
                      ),
                      );
                                      }, icon: 'assets/Qr Code.svg', buttonname: "Scan QR",

                  ),
                ),
                SizedBox(width: 20,),
                Expanded(
                  flex: 1,
                  child:HomeScreen_CustomButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HowToPay()),
                      );                    }, icon: 'assets/nfc.svg', buttonname: 'NFC',

                  ),
                ),

              ],
            ),
          ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Payment Transfer",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff132183)),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                // height: 100,
                width: 160,
                child: HomeScreen_CustomButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Transfer()),
                    );
                  }, icon: 'assets/transfer.svg', buttonname: 'Transfer',

                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Promotions",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff132183)),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child:HomeScreen_CustomButton(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RewardsandCashBacks()),
                          );                        }, icon: 'assets/Reward.svg', buttonname: "Rewards and Cashback",

                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      flex: 1,
                      child:HomeScreen_CustomButton(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Refer()),
                          );                        }, icon: 'assets/Rewards.svg', buttonname: 'Refer & Earn',

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
