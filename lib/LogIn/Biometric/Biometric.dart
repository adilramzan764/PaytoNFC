import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paytonfc/LogIn/LogInVerification.dart';

class BiometricLogIn {
  static void loginwithFaceId(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          alignment: Alignment.bottomCenter,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: Colors.white,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Container(
                width: constraints.maxWidth * 1,
                height: constraints.maxHeight * 0.5,
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 25),
                      Center(
                        child: Text(
                          'Login using your biometric credential',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff132183),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 30),
                      Center(
                        child: Text(
                          'You can use face or fingerprint authentication\n to confirm login this app.',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff3A3A3A),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 20,
                        ),
                        child:  Align(
                          alignment: Alignment.center,
                          child: SvgPicture.asset(
                            'assets/Face Sacn.svg',
                            width: 100, // Adjust the image size as needed
                            height: 100,
                          ),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height*0.01),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LogInVerification()),
                          );
                        },
                        child: Text(
                          'Tap here to confirm ',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff132183),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10),
                          child: Row(
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Cancel ',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xff132183),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      loginwithFingerPrint(context);
                                    },
                                    child: Text(
                                      'USE FINGERPRINT',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xff132183),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  static void loginwithFingerPrint(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          alignment: Alignment.bottomCenter,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: Colors.white,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Container(
                width: constraints.maxWidth * 1,
                height: constraints.maxHeight * 0.5,
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 25),
                      Text(
                        'Login using your biometric credential',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff132183),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 30),
                      Center(
                        child: Text(
                          'You can use face or fingerprint authentication\n to confirm login this app.',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff3A3A3A),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 30,
                        ),
                        child:  Align(
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: (){
                              Navigator.pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => LogInVerification()),
                              );
                            },
                            child: SvgPicture.asset(
                              'assets/fingerprint.svg',
                              width: 70, // Adjust the image size as needed
                              height: 70,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Touch the fingerprint sensor',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff132183),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10),
                          child:
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Cancel ',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xff132183),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),



                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

}
