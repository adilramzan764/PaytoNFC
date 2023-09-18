import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paytonfc/SignUp/RegisterAccount.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Utils/CustomButton.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  _OnBoardScreenState createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: PageView(
              controller: _controller,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: [
                buildOnBoardScreen(
                    'assets/onboard1.svg',
                    'Easy & Contactless Payment',
                    'Lörem ipsum pren. Diapren. Rygening polylingar och tukåskade. '),
                buildOnBoardScreen(
                    'assets/onboard2.svg',
                    'Contactless Transfer',
                    'Lörem ipsum pren. Diapren. Rygening polylingar och tukåskade. '),
                buildOnBoardScreen(
                    'assets/onboard3.svg',
                    'Get Rewards & Cashback',
                    ' Rens bera viskade, och antidoligt. Facebooka betårta homofeskap, did. '),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: Color(0xff132183),
                    dotColor: Color(0xff132183),
                    dotHeight: 10,
                    dotWidth: 10,
                    spacing: 10,
                  ),
                ),
                if (_currentPage != 2)
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.arrow_right,
                          color: Color(0xff132183),
                        )),
                  )
                else
                  SizedBox(
                    height: 50,
                    width: 50,
                  )
              ],
            ),
          ),
          // SizedBox(height: 50),
          // if (_currentPage == 0)
          //   buildOnBoardButton('Next', () {
          //     _controller.nextPage(
          //       duration: Duration(milliseconds: 500),
          //       curve: Curves.ease,
          //     );
          //   }),
          if (_currentPage == 2)
            SizedBox(
              height: 20,
            ),

          if (_currentPage == 2)
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: CustomButton(
                    text: 'Get Started',
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterAccount()),
                        // Replace NewScreen() with the screen you want to navigate to.
                        (Route<dynamic> route) =>
                            false, // Use a condition to specify when to stop removing routes.
                      );
                    },
                  )),
            ),

        ],
      ),
    );
  }

  Widget buildOnBoardScreen(
      String imagePath, String heading, String description) {
    return Column(
      children: [
        Center(
          child: Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
            child: Transform.scale(
              scale: 0.9,
              child: SvgPicture.asset(
                imagePath,
                // width: 290,
                // height: 210,
              ),
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.15),
        Text(
          heading,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        )
      ],
    );
  }
}
