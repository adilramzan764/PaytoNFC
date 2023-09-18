import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paytonfc/SignUp/Verification.dart';

import '../Utils/CustomButton.dart';
import '../Utils/CustomTextField.dart';

class RegisterAccount extends StatefulWidget {
  const RegisterAccount({Key? key}) : super(key: key);

  @override
  State<RegisterAccount> createState() => _RegisterAccountState();
}

class _RegisterAccountState extends State<RegisterAccount> {
  TextEditingController firstname = TextEditingController();
  bool _isChecked = false;

  String? selectedGender = 'Male'; // Set the initial value to 'Male'


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
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
                      onPressed: () {}, icon: Icon(CupertinoIcons.arrow_left)),
                  Text(
                    'Register Account',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
                    'Welcome to PayTo',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff132183),
                        fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 40,
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
                controller: firstname,
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                heading: "Phone Number:",
                hinttext: '+41 123 456 789',
                controller: firstname,
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                heading: "Email Address:",
                hinttext: 'example@gmail.com',
                controller: firstname,
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                heading: "Password:",
                hinttext: '--------',
                controller: firstname,
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                heading: "Confirm Password:",
                hinttext: '--------',
                controller: firstname,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: CustomTextField(
                      heading: "Date of birth:",
                      hinttext: '28 / 07 / 1990',
                      controller: firstname,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Gender:",
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


                            value: selectedGender,
                            items: <String>['Male', 'Female']
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
                                selectedGender = newValue!;
                              });
                            },
                            underline: Container(), // Remove the default underline
                          )
                          ,
                        ),
                      ],
                    )



                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                heading: "Zip Code:",
                hinttext: '4704',
                controller: firstname,
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
                      activeColor: Color(0xff132183), //The color to use when this checkbox is checked.

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
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 20),
                    child: CustomButton(
                      text: 'Register',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Verification()),
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
