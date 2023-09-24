import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NFC_Pay extends StatelessWidget {
  const NFC_Pay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0D1548),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    CupertinoIcons.arrow_left,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Hold To Pay',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 40,
                  width: 40,
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Center(
              child: SvgPicture.asset('assets/nfc.svg',height: 100,width: 100,),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Text(
              'Hold  Here To Pay',
              style: TextStyle(
                  fontSize: 24,
                  // fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),

          ],
        ),
      ),
    );
  }
}
