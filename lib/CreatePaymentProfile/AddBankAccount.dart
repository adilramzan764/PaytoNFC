import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paytonfc/SignUp/VerificationOTP.dart';

import '../Utils/CustomButton.dart';
import '../Utils/CustomTextField.dart';
import 'AccountCreation_success.dart';

class AddBankAccount extends StatefulWidget {
  const AddBankAccount({Key? key}) : super(key: key);

  @override
  State<AddBankAccount> createState() => _AddBankAccountState();
}

class _AddBankAccountState extends State<AddBankAccount> {


  TextEditingController bankname = TextEditingController();
  TextEditingController accountnumber = TextEditingController();
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();

  TextEditingController address = TextEditingController();
  TextEditingController zipcode = TextEditingController();
  bool _isChecked = false;
  String? selectedAccountType = 'Current'; // Set the initial value to 'Male'


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
                    'Add Bank Account',
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
                    'Add your bank account',
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
                heading: "Account Number:",
                hinttext: '123 *** *** ***',
                controller: accountnumber,
              ),

              SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Account Type:",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  )),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff132183), // Set the border color
                    width: 1.0, // Set the border width
                  ),
                  borderRadius: BorderRadius.circular(10.0), // Add rounded corners
                ),
                padding: EdgeInsets.symmetric(horizontal: 12.0), // Add padding to the container
                child: DropdownButton<String>(
                  padding: EdgeInsets.only(left: 10),
                  icon: Icon(CupertinoIcons.chevron_down),
                  iconSize: 18,
                  isExpanded: true,


                  value: selectedAccountType,
                  items: <String>['Current', 'Savings']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(fontSize: 14, ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedAccountType = newValue!;
                    });
                  },
                  underline: Container(), // Remove the default underline
                )
                ,
              ),

              SizedBox(
                height: 20,
              ),
              CustomTextField(
                heading: "First Name:",
                hinttext: 'John',
                controller: firstname,
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                heading: "Last Name:",
                hinttext: 'Mike',
                controller: lastname,
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
                      text: 'Save',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SuccessRegistration()),
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
