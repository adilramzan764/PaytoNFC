import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  String heading;
  String hinttext;
  TextEditingController controller;

  CustomTextField(
      {Key? key,
      required this.heading,
      required this.hinttext,
      required this.controller})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  String selectedGender = 'Male';
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.heading,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            )),
        SizedBox(
          height: 15,
        ),
        Material(
          elevation: 2, // Set the elevation value for the shadow
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Color(0xff132183), width: 1),
            ),
            child: TextField(
              obscureText: widget.heading == "Password:" ||
                  widget.heading == "Confirm Password:"
                  ? _obscureText
                  : false,
              decoration: InputDecoration(
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                border: InputBorder.none,
                hintText: widget.hinttext,
                contentPadding: EdgeInsets.all(15),
                suffixIcon: _buildSuffixIcon(),

              ),
              // onTap: _showGenderDropdown,

            )
          ),
        )
      ],
    );
  }
  Widget _buildSuffixIcon() {
    if (widget.heading == "Password:" || widget.heading == "Confirm Password:") {
        return IconButton(
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          icon: Icon(
            _obscureText ? CupertinoIcons.eye_slash : CupertinoIcons.eye,
            color: Color(0xff777777),
          ),
        );}

      else if (widget.heading == "Date of birth:")
    {
        // Return a down arrow icon when not "Date of birth"
        return Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: IconButton(
            onPressed: () {
              // if(widget.heading == "Gender:")
                          },
            icon: Icon(
              CupertinoIcons.chevron_down,
              color: Color(0xff777777),
              size: 18,
            ),
          ),
        );
      }
     else {
      return SizedBox(); // Return an empty space
    }
  }
}
