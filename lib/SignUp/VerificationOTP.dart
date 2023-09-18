import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paytonfc/SignUp/Confirmation.dart';
import 'package:paytonfc/Utils/CustomButton.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificaationOTP extends StatefulWidget {
  const VerificaationOTP({Key? key}) : super(key: key);

  @override
  State<VerificaationOTP> createState() => _VerificaationOTPState();
}

class _VerificaationOTPState extends State<VerificaationOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,

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
                    'Verification OTP',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40,
                    width: 40,
                  )
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Center(
                child: Text(
                  'A code has been send  to your phone ',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.2,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: PinCodeTextField(
                  keyboardType: TextInputType.number,
                  textStyle: TextStyle(color: Colors.black),
                  appContext: context,
                  length: 4,
                  // You can change the length of the PIN code here
                  onChanged: (value) {
                    // Handle PIN code changes
                  },
                  onCompleted: (value) {
                    // Handle PIN code submission
                  },
                  animationType: AnimationType.fade,
                  // Specify animation type
                  pinTheme: PinTheme(

                    shape: PinCodeFieldShape.underline,
                    // Change field shape
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 60,



                    inactiveColor: Colors.grey,
                    activeColor: Color(0xff132183),
                    selectedColor: Color(0xff132183), // Change selected field color

                    inactiveFillColor:
                    Colors.black, // Change inactive field color
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Center(
                child: Text(
                  'Didn’t receive any code? ',
                  style: TextStyle(fontSize: 15, color: Color(0xff777777),decoration: TextDecoration.underline),
                ),
              ),
              SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Resend in  ',
                    style: TextStyle(fontSize: 15, color: Color(0xff132183),decoration: TextDecoration.underline,fontWeight: FontWeight.w500),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    '00:58 ',
                    style: TextStyle(fontSize: 15, color: Color(0xff132183),decoration: TextDecoration.underline,fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 25),
                    child: CustomButton(
                      text: 'Continue',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Confirmation()),
                        );
                      },
                    )),
              ),
              SizedBox(height: 15,)


            ],
          ),
        ),
      ),
    );
  }
}
