import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paytonfc/LogIn/LogIn.dart';
import 'package:paytonfc/Utils/CustomButton.dart';

class Confirmation extends StatelessWidget {
  const Confirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.2,),
          Center(
            child: SvgPicture.asset('assets/confirmation.svg'),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.08,),

          Text(
            'Thank you for your\n registration!',
            style: TextStyle(fontSize: 24, color: Color(0xff132183),fontWeight: FontWeight.bold),textAlign: TextAlign.center,
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.04,),

          Text(
            'We’re glad you’re here!\n Before you start exploring,\n you have to login with biometric\n credentials.',
            style: TextStyle(fontSize: 15, color: Color(0xff777777)),textAlign: TextAlign.center,
          ),
          Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 40),
                child: CustomButton(
                  text: 'Go to Login',
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LogIn()),
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
