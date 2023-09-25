import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paytonfc/SignUp/VerificationOTP.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
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
                    }, icon: Icon(CupertinoIcons.arrow_left)),
                Text(
                  'Two Factor Authentication',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
                'We’ll send a verification code via your...',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            validation_widget(
              'assets/Text Message.svg',
              'Text Message',
              'We’ll send a code to\n +41 (***) *** 789\nto get you set up.',
                  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>VerificaationOTP()),
                );
              },
            ),

            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(
                thickness: 1,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            validation_widget(
                'assets/Email.svg',
                'Email',
                'We’ll send a code to\n examle@gmail.com\n to get you set up.',
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>VerificaationOTP()),
                  );
                }),
          ],
        ),
      ),
    );
  }

  Widget validation_widget(
    String icon,
    String heading,
    String text,
    VoidCallback onPressed,
  ) {
    return Container(
      height: MediaQuery.of(context).size.height*0.115,
      width: double.infinity,
      child: Row(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 60.0),
              child: Container(
                width: 90, // Adjust the width and height as needed
                height: 90,
                decoration: BoxDecoration(
                  shape: BoxShape.circle, // Use a circular shape
                  gradient: LinearGradient(
                    end: Alignment.centerRight,
                    begin: Alignment.topCenter,
                    colors: [
                      Color(0xff26368E),
                      Color(0xff0D1448),
                    ],
                  ), // Circle background color
                ),
                child: Center(child: SvgPicture.asset(icon)),
              ),
            ),
          ),
          SizedBox(
            width: 25,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                heading,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff132183)),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 15, color: Color(0xff777777)),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed:
                    onPressed
                  ,
                  icon: Icon(CupertinoIcons.right_chevron,color: Color(0xff132183)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
