import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Card_Info {
  final String name;
  final String number;
  final String balance;
  final String nooftransactions;

  Card_Info(this.name, this.number, this.balance, this.nooftransactions);
}

Widget Card_Widget(
  BuildContext context,
  Card_Info card_info,
  bool isSelected,
  int index,
  void Function(int) onTap,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 4.0),
    child: InkWell(
      onTap: () {
        onTap(index); // Call the selectButton function with the index
      },
      child: Container(
          height: 210,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: isSelected ? null : Colors.white,
            // Use null for non-selected items
            gradient: isSelected
                ? LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xff26368E),
                      Color(0xff0D1448),
                    ],
                  )
                : null,
            // Use null for non-selected items
            border: Border.all(
                color: isSelected ? Colors.white : Color(0xff132183)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Text(
                  card_info.name,
                  style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                      fontSize: 16),
                )),
                SizedBox(
                  height: 8,
                ),
                Center(
                    child: Text(
                  card_info.number,
                  style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                      fontSize: 14),
                  textAlign: TextAlign.center,
                )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Balance",
                      style: TextStyle(
                          color: isSelected ? Colors.white : Colors.black,
                          fontSize: 15),
                      textAlign: TextAlign.center,
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.005,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      card_info.balance,
                      style: TextStyle(
                          color: isSelected ? Colors.white : Colors.black,
                          fontSize: 16),
                      textAlign: TextAlign.center,
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.005,
                ),
                if (card_info.name == 'AXIS BANK')
                  SvgPicture.asset('assets/mastercard.svg')
                else
                  SizedBox(height: 10,),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      card_info.nooftransactions,
                      style: TextStyle(
                          color: isSelected ? Colors.white : Colors.black,
                          fontSize: 12),
                      textAlign: TextAlign.center,
                    )),
              ],
            ),
          )),
    ),
  );
}
