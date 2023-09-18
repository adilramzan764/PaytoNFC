import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paytonfc/Utils/CustomButton.dart';

class LogInVerification extends StatelessWidget {
  const LogInVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.2,),
          Center(
            child: SvgPicture.asset('assets/LogInVerification.svg'),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.08,),

          Text(
            'You’re verified',
            style: TextStyle(fontSize: 24, color: Color(0xff132183),fontWeight: FontWeight.bold),textAlign: TextAlign.center,
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.04,),

          Text(
            'You have been verified you information.\n Let’s make transactions!',
            style: TextStyle(fontSize: 15, color: Color(0xff777777)),textAlign: TextAlign.center,
          ),
          Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 40),
                child: CustomButton(
                  text: 'Done',
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => LogIn()),
                    // );
                  },
                )),
          ),

        ],
      ),
    );
  }
}
