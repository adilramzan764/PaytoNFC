import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Utils/CustomButton.dart';
import 'QRPay_Confirmation.dart';

class QR_Pay extends StatefulWidget {
  const QR_Pay({Key? key}) : super(key: key);

  @override
  State<QR_Pay> createState() => _QR_PayState();
}

class _QR_PayState extends State<QR_Pay> {
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
            Center(
              child: Text(
                'QR Pay',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Center(
              child: Text(
                'Check recipient and amount before payment',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Center(
              child: Text(
                'Pay To',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'Uber',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff132183)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: DottedLine(
                direction: Axis.horizontal,
                alignment: WrapAlignment.center,
                lineLength: double.infinity,
                lineThickness: 1.0,
                dashLength: 4.0,
                dashColor: Colors.black,
                // dashGradient: [Colors.red, Colors.blue],
                dashRadius: 0.0,
                dashGapLength: 4.0,
                dashGapColor: Colors.transparent,
                // dashGapGradient: [Colors.red, Colors.blue],
                dashGapRadius: 0.0,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Payment Amount (\$)',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Tap Below',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 65,
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff132183)),
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff132183)),
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                  hintText: '\$100.00',
                  hintStyle: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff132183)),
                  contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 50),


                ),
              ),),

            // ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  end: Alignment.topLeft,
                  begin: Alignment.bottomRight,
                  colors: [
                    Color(0xff2546FE),
                    Color(0xffCF39AA),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/card.svg',
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'This merchant accepts card payment.\n Tap below to use card instead. ',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff132183)),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'From',
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'PayTo',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            '*** *** *** 3207',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(CupertinoIcons.chevron_down),
                        iconSize: 20,
                      ),
                    ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            'Please note that your deposits which are insured by PIDM, will no longer be protected if transferred to non-PIDM covered institutions or accounts.',
                        style: TextStyle(color: Colors.grey, fontSize: 14)),
                    TextSpan(
                      text: 'Tap for more details.',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff132183),
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'By tapping “Ready to Pay”, you agree to our',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Terms & Conditions.',
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff132183),
                  decoration: TextDecoration.underline),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
                child: CustomButton(
                  text: 'Proceed  to Pay',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QRPay_Confirmation()),

                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
