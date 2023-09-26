import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen_CustomButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String icon;
  final String buttonname;


  HomeScreen_CustomButton({
    required this.onTap,
    required this.icon,
    required this.buttonname,

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                end: Alignment.centerRight,
                begin: Alignment.topCenter,
                colors: [
                  Color(0xff26368E),
                  Color(0xff0D1448),
                ],
              ),
            ),
            child: Center(
              child: Center(
                child: Transform.scale(
                    scale: 1,
                    child: SvgPicture.asset(icon)),
              ),
            ),
          ),
        ),
        SizedBox(height: 5,),
        Text(buttonname,style: TextStyle(color: Color(0xff3A3A3A)),)
      ],
    );
  }
}
