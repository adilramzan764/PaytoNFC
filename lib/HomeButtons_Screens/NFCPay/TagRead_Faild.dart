import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paytonfc/LogIn/LogInVerification.dart';

class Tagread_Failed {
  static void customdialog(BuildContext context) {
    final int totalCircles =  10; // Total number of circles
    final int blueCircles = 0; // Number of blue circles
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
                width: constraints.maxWidth * 15,
                height: constraints.maxHeight * 0.45,
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 25),
                      Center(
                        child: Text(
                          'Ready to Scan',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff132183),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 30,
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: SvgPicture.asset(
                            'assets/tagread_faild.svg',
                            width: 100, // Adjust the image size as needed
                            height: 100,
                          ),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Center(
                          child: Text(
                            'Tag Not Read.',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff132183),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(totalCircles, (index) {
                          // Check if the current circle should be blue or grey
                          final isBlue = index < blueCircles;

                          return Container(
                            width: 20,
                            height: 20,
                            margin: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: isBlue ? Color(0xff132183) : Color(0xffCACACA),
                            ),
                          );
                        }),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height*0.03,
                            width: 120,

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
