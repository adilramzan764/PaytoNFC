import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Payment_utils/PaymentSuccess.dart';
import '../../Payment_utils/Payment_Unsuccess.dart';
import '../../Utils/CustomButton.dart';

class QRPay_Confirmation extends StatelessWidget {
  const QRPay_Confirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                ),
                Center(
                  child: Text(
                    'Confirmation',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
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
                DottedLine(
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
                    '\$100.00',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff132183)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    '21 sep 2023. 09:10PM ',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Divider(
                  thickness: 2,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'Reference No.',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Expanded(
                        child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        '1234567',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff132183)),
                      ),
                    ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 2,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'From',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Expanded(
                        child: Align(
                      alignment: Alignment.centerRight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'PayTo',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff132183)),
                          ),
                          Text(
                            '*** *** *** 3207',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff132183)),
                          ),
                        ],
                      ),
                    ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 2,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'Transaction Type',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Expanded(
                        child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'QR Payment',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff132183)),
                      ),
                    ))
                  ],
                ),
                Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 40),
                      child: CustomButton(
                        text: 'Done',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Payment_Unsuccess()),
                          );
                        },
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
