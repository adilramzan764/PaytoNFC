import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Utils/CustomTextField.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {

  TextEditingController firstname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
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
                    'My Profile',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SvgPicture.asset('assets/Edit.svg')
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 130,
                height: 130,
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/profilepic.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Color(0xff132183)),

                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: SvgPicture.asset('assets/add a photo.svg',height: 20,width: 20,)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Text('John Mike',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 30,),
              CustomTextField(
                heading: "First Name:",
                hinttext: 'John',
                controller: firstname,
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                heading: "Last Name:",
                hinttext: 'Mike',
                controller: firstname,
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                heading: "Phone Number:",
                hinttext: '+41 123 456 789',
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
                heading: "Address:",
                hinttext: 'Rägetenstrasse 29, Holzhäusern,Switzerland.',
                controller: firstname,
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                heading: "Zip Code:",
                hinttext: '4704',
                controller: firstname,
              ),
              SizedBox(
                height: 40,
              ),
              

            ],
          ),
        ),
      ),
    );
  }
}
