import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paytonfc/Settings/PasswordResetConfirmation.dart';

import '../Utils/CustomButton.dart';
import '../Utils/CustomTextField.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {

  TextEditingController currentpassword= TextEditingController();
  TextEditingController newpassword= TextEditingController();
  TextEditingController confirmpassword= TextEditingController();

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
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      'Change Password',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 40,
                      width: 40,
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                CustomTextField(
                  heading: "Current Password:",
                  hinttext: '--------',
                  controller: currentpassword,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  heading: "New Password:",
                  hinttext: '--------',
                  controller: newpassword,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  heading: "Confirm Password:",
                  hinttext: '--------',
                  controller: confirmpassword,
                ),
                Spacer(),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 20),
                      child: CustomButton(
                        text: 'Update Password',
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PasswordResetConfirmation()),
                                (Route<dynamic> route) =>
                            false,
                          );                        },
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
