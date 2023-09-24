import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../SignUp/Confirmation.dart';
import '../../Utils/CustomButton.dart';
import 'TransferMoney_Confirmation.dart';

class SendMoney extends StatefulWidget {
   SendMoney({Key? key}) : super(key: key);

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  String selectedValue = 'USD';
 // Initial selected value
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
              children: [
                SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(CupertinoIcons.arrow_left),
                    ),
                    Text(
                      'Send Money',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 40, width: 40),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey),
                    image: DecorationImage(
                      image: AssetImage('assets/model1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'To Mike',
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Text(
                      'Enter Amount',
                      style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w400
                      ),
                    ),
                    Expanded(child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Max \$15,000.00 ',
                        style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w400
                        ),
                      ),
                    ))

                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Color(0xff132183))),
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      border: InputBorder.none,
                      prefixIcon:  Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: 50,
                              width: 80,
                              child: DropdownButton<String>(
                                isExpanded: true,
                                elevation: 0,
                                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 18),


                                icon: Icon(CupertinoIcons.chevron_down,size: 18,),
                                value: selectedValue,
                                onChanged: (newValue) {
                                  setState(() {
                                    selectedValue = newValue!;
                                  });
                                },
                                items: <String>[
                                  'USD',
                                  'PKR',

                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                            SizedBox(width: 20,)
                          ],
                        ),
                      ),
                      hintText: '\$19000',
                      hintStyle:TextStyle(fontWeight: FontWeight.w500,color: Color(0xff132183),fontSize: 18) ,
                      contentPadding: EdgeInsets.all(22),

                      // suffixIcon: _buildSuffixIcon(),

                    ),
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontWeight: FontWeight.w500,color: Color(0xff132183),fontSize: 18),
                  )
                  // Row(
                  //   children: [
                  //     SizedBox(
                  //       width: 10,
                  //     ),
                  //     SvgPicture.asset('assets/debit.svg'),
                  //     SizedBox(
                  //       width: 5,
                  //     ),
                  //     Text(
                  //       'Debit',
                  //       style: TextStyle(
                  //           fontSize: 16,
                  //           fontWeight: FontWeight.bold,
                  //           color: Colors.black),
                  //     ),
                  //     Expanded(
                  //         child: Align(
                  //           alignment: Alignment.centerRight,
                  //           child: Text(
                  //             '\$10, 500.00',
                  //             style: TextStyle(
                  //                 fontSize: 16,
                  //                 fontWeight: FontWeight.bold,
                  //                 color: Color(0xff132183)),
                  //           ),
                  //         )),
                  //     IconButton(
                  //         onPressed: () {},
                  //         icon: Icon(
                  //           CupertinoIcons.chevron_down,
                  //           size: 20,
                  //         ))
                  //   ],
                  // ),
                ),

                Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 40),
                      child: CustomButton(
                        text: 'Send Money',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TransferMoney_Confirmation()),

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
