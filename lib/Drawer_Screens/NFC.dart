import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../HomeButtons_Screens/NFCPay/NFC_Confirmation.dart';
import '../Utils/CustomButton.dart';

class NFC extends StatefulWidget {
  const NFC({Key? key}) : super(key: key);

  @override
  State<NFC> createState() => _NFCState();
}

class _NFCState extends State<NFC> {

  bool isSwitched1=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      }, icon: Icon(CupertinoIcons.arrow_left)),
                  Text(
                    'NFC',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40,
                    width: 40,
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.05,
              ),
              SvgPicture.asset('assets/NFC3.svg'),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.06,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text('Unlock doors, make payments, or connect to other smart devices by holding the back of your device up to an NFC reader.',style: TextStyle(fontSize: 13,color: Colors.grey),textAlign: TextAlign.center,),
              ),
              SizedBox(height: 20,),
              Divider(thickness: 1,),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text(
                    'NFC',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,color: Color(0xff132183)),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Switch(
                          value: isSwitched1,
                          activeColor: Color(0xff10B23F),
                          inactiveTrackColor: Colors.grey,
                          onChanged: (value) {
                            setState(() {
                              isSwitched1 = !isSwitched1;
                            });
                          }),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Divider(thickness: 1,),
              SizedBox(height: 10,),

              Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Default payment app',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,color: Color(0xff132183)),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'PayTo',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: Color(0xff10B23F)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Divider(thickness: 1,),
              Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0,),
                    child: CustomButton(
                      text: 'Tap & Pay',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NFC_Confirmation()),
                        );
                      },
                    )),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,)

            ],
          ),
        ),
      ),
    );
  }
}
