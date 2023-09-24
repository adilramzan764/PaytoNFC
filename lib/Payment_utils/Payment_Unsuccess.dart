import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../BottomNavigationBar/BottomNavigationBar.dart';
import '../Utils/CustomButton.dart';

class Payment_Unsuccess extends StatelessWidget {
  const Payment_Unsuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          Align(
            child: SvgPicture.asset('assets/unsuccess.svg'),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'Payment Unsuccess',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffD31717)),
            ),
          ),
          Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
                child: CustomButton(
                  text: 'Back to Home',
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyBottomNavigationBar()),
                      // Replace NewScreen() with the screen you want to navigate to.
                          (Route<dynamic> route) =>
                      false, // Use a condition to specify when to stop removing routes.
                    );
                  },
                )),
          ),
        ],
      ),
    );
  }
}
