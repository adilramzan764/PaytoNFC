import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paytonfc/BottomNavigationBar/BottomNavigationBar.dart';

import '../Utils/CustomButton.dart';

class PasswordResetConfirmation extends StatelessWidget {
  const PasswordResetConfirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.2,),
          Center(
            child: SvgPicture.asset('assets/passwordreset.svg'),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.08,),

          Text(
            'Password Reset',
            style: TextStyle(fontSize: 25, color: Color(0xff132183),fontWeight: FontWeight.bold),textAlign: TextAlign.center,
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.04,),

          Text(
            'Your password has been reset successfully ',
            style: TextStyle(fontSize: 15, color: Color(0xff777777)),textAlign: TextAlign.center,
          ),
          Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 40),
                child: CustomButton(
                  text: 'Continue',
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyBottomNavigationBar()),
                          (Route<dynamic> route) =>
                      false,
                    );
                  },
                )),
          ),

        ],
      ),
    );
  }
}
