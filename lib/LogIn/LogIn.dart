import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paytonfc/LogIn/Biometric/Biometric.dart';
import 'package:paytonfc/LogIn/LogInVerification.dart';
import 'package:paytonfc/Utils/CustomButton.dart';
import 'package:paytonfc/Utils/CustomTextField.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController phone = TextEditingController();
  TextEditingController paswword = TextEditingController();
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                // Stretch the content horizontally

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
                        'Log in',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
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
                    heading: "Phone Number or Email:",
                    hinttext: '+41 123 456 789',
                    controller: paswword,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    heading: "Password:",
                    hinttext: '--------',
                    controller: phone,
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 0.7,
                        // Adjust the scale factor as needed to decrease the size
                        child: Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Color(0xff132183),
                            // Border color
                            toggleableActiveColor:
                                Color(0xff132183), // Fill color when checked
                          ),
                          child: Checkbox(
                            activeColor: Color(0xff132183),
                            // The color to use when this checkbox is checked.
                            value: _isChecked,
                            visualDensity: VisualDensity.compact,
                            onChanged: (bool? newValue) {
                              setState(() {
                                _isChecked = newValue ?? false;
                              });
                            },
                          ),
                        ),
                      ),
                      // SizedBox(width: 3,),
                      Text(
                        'Remember me',
                        style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff132183),
                            fontWeight: FontWeight.w500),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              'Forgot password?',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff132183),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10),
                        child: CustomButton(
                          text: 'LogIn',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LogInVerification()),
                            );
                          },
                        )),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Center(
                    child: Text(
                      "OR",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff132183),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        BiometricLogIn.loginwithFaceId(context);
                      },
                      child: Text(
                        "Login with your biometric",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff132183)),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            ),
          ),
        ));
  }
}
