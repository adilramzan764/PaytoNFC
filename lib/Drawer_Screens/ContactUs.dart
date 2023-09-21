import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/CustomButton.dart';
import '../Utils/CustomTextField.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {

  TextEditingController firstname = TextEditingController();

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
                        }, icon: Icon(CupertinoIcons.arrow_left)),
                    Text(
                      'Contact Us',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 40,
                      width: 40,
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.05,
                ),
                CustomTextField(
                  heading: "Name:",
                  hinttext: 'John Mike',
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
                  heading: "Message:",
                  hinttext: 'Write message here...',
                  controller: firstname,
                ),
                Spacer(),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 20),
                      child: CustomButton(
                        text: 'Send',
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Verification()),
                          // );
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
