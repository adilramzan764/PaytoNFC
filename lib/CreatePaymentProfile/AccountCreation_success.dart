import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../BottomNavigationBar/BottomNavigationBar.dart';
import '../Utils/CustomButton.dart';

class SuccessRegistration extends StatefulWidget {
  const SuccessRegistration({Key? key}) : super(key: key);

  @override
  State<SuccessRegistration> createState() => _SuccessRegistrationState();
}

class _SuccessRegistrationState extends State<SuccessRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          Center(
            child: SvgPicture.asset('assets/confirmation.svg'),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          Text(
            'Your card is successfully\n registered',
            style: TextStyle(
                fontSize: 24,
                color: Color(0xff132183),
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Text(
            'Your card is ready to use\n for PayTo payment.',
            style: TextStyle(fontSize: 15, color: Color(0xff777777)),
            textAlign: TextAlign.center,
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(0xff26368E),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Add another Card",
                    style: TextStyle(
                      color: Color(0xff26368E),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: CustomButton(
                text: 'Get Started',
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
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
