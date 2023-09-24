import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Utils/CustomButton.dart';
import 'InviteFriends.dart';

class Refer extends StatelessWidget {
   Refer({Key? key}) : super(key: key);

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
                    },
                    icon: Icon(CupertinoIcons.arrow_left)),
                Text(
                  'Refer & Earn',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 40,
                  width: 40,
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            SvgPicture.asset(
              'assets/refer.svg',
              height: 210,
              width: 210,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            Center(
              child: Text(
                'Refer now & Earn up to \$200',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff132183)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Send a referral link to your friends\n via SMS / Email / WhatsApp',
                style: TextStyle(fontSize: 14, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            Center(
              child: Text(
                'How does it work?',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff132183)),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Center(
              child: Text(
                'REFERRAL CODE',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff3A3A3A),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 65,
              width: MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff132183)),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  'XUYE895EW',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff132183)),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
                child: Builder(
                  builder: (BuildContext context) {
                    return
                    CustomButton(
                    text: 'Invite Friends',
                    onPressed: () {
                      InviteFriends_BottomSheet.show(context);                  },
                  ); },

                )),
          ],
        ),
      ),
    );
  }
}
