import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class AmountLimit extends StatefulWidget {
  bool isSelected; String text; int index;

  AmountLimit({Key? key,required this.isSelected,required this.text,required this.index}) : super(key: key);


  @override
  State<AmountLimit> createState() => _AmountLimitState();
}

class _AmountLimitState extends State<AmountLimit> {

  int selectedButtonIndex = 2; // Initialize with -1, meaning no button is selected

  void selectButton(int index) {
    setState(() {
      if (selectedButtonIndex == index) {
        // If the same button is tapped again, unselect it
        selectedButtonIndex = -1;
      } else {
        // Otherwise, select the new button
        selectedButtonIndex = index;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: widget.isSelected
            ? BoxDecoration(
          color: Color(0xff132183),
          borderRadius: BorderRadius.circular(10),
        )
            : BoxDecoration(),
        child: TextButton(
          onPressed: () {
            selectButton(widget.index);
          },
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 15,
              color: widget.isSelected ? Colors.white : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}





