import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/CustomButton.dart';
import '../Utils/CustomTextField.dart';
import 'AddBankAccount.dart';

class CreatePaymentProfile extends StatefulWidget {
  const CreatePaymentProfile({Key? key}) : super(key: key);

  @override
  State<CreatePaymentProfile> createState() => _CreatePaymentProfileState();
}

class _CreatePaymentProfileState extends State<CreatePaymentProfile> {

  TextEditingController bankname = TextEditingController();
  TextEditingController cardfirstname = TextEditingController();
  TextEditingController cardlastname = TextEditingController();
  TextEditingController type = TextEditingController();
  TextEditingController cardnumber = TextEditingController();
  TextEditingController expirationdate = TextEditingController();
  TextEditingController securitycode = TextEditingController();
  TextEditingController cvv = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController zipcode = TextEditingController();

  bool _isChecked = false;

  String? selectedGender = 'Male'; // Set the initial value to 'Male'
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:   SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                      'Create Payment Profile',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 40,
                      width: 40,
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Register your card',
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff132183),
                          fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  height: 40,
                ),
                CustomTextField(
                  heading: "Bank Name:",
                  hinttext: 'Axis Bank',
                  controller: bankname,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  heading: "Card First Name:",
                  hinttext: 'John',
                  controller: cardfirstname,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  heading: "Card Last Name:",
                  hinttext: 'Mike',
                  controller: cardlastname,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  heading: "Card Type:",
                  hinttext: 'Visa',
                  controller: type,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  heading: "Card Number:",
                  hinttext: '123 *** *** ***',
                  controller: cardnumber,
                ),
                SizedBox(
                  height: 20,
                ),

                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: CustomTextField(
                        heading: "Expiration Date:",
                        hinttext: '28/07/1990',
                        controller: expirationdate,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        flex: 2,
                        child:CustomTextField(
                          heading: "CVV:",
                          hinttext: '123 456',
                          controller: cvv,
                        ),



                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  heading: "Security Code:",
                  hinttext: '123 *** ***',
                  controller: securitycode,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  heading: "Address:",
                  hinttext: 'Rägetenstrasse 29, Holzhäusern,Switzerland.',
                  controller: address,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  heading: "Zip Code:",
                  hinttext: '4704',
                  controller: zipcode,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Theme(
                      data: ThemeData(
                        unselectedWidgetColor: Color(0xff132183), // Border color
                        toggleableActiveColor: Color(0xff132183), // Fill color when checked
                      ),
                      child: Checkbox(
                        activeColor: Color(0xff132183),
                        visualDensity: VisualDensity.compact,//The color to use when this checkbox is checked.

                        value: _isChecked,
                        onChanged: (bool? newValue) {
                          setState(() {
                            _isChecked = newValue ?? false;
                          });
                        },
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'By Registering on account you agree our',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff777777)
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'terms',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff132183),
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              TextSpan(
                                text: ' and ',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff132183),
                                ),
                              ),
                              TextSpan(
                                text: 'conditions',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff132183),
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 20),
                      child: CustomButton(
                        text: 'Register',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AddBankAccount()),
                          );
                        },
                      )),
                ),

              ],
            ),
          ),
        ),

    );
  }
}
