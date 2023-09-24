import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utils/SendInvitation_Button.dart';
import 'Invitaions_ContactList.dart';

class InviteFriends_BottomSheet {
  

  static void show(BuildContext context) {
    final List<Invitation_ContactInfo> contacts = [
      Invitation_ContactInfo('assets/model1.jpg', 'John Doe', '123-456-7890'),
      Invitation_ContactInfo('assets/model2.jpg', 'Jane Smith', '987-654-3210'),
      Invitation_ContactInfo('assets/model3.jpg', 'Alice Johnson', '555-123-4567'),
      Invitation_ContactInfo('assets/model4.jpg', 'Mia', '555-123-4567'),
      Invitation_ContactInfo('assets/model2.jpg', 'Jane Smith', '987-654-3210'),


      // Add more contacts here
    ];
    double screenHeight = MediaQuery.of(context).size.height;
    double dialogHeight = screenHeight * 0.5; // Set the dialog height to half of the screen

    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return GestureDetector(
          onTap: (){
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => Select_Doctors(), // Replace MyNewScreen with your desired screen widget
            //   ),);

          },
          child: ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  SizedBox(height: 3,),
                  Container(height: 5,width: 140,color: Color(0xff132183),),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      sendinvitation_Button('assets/Whatsapp.svg',"Whatsapp"),
                      SizedBox(width: 10,),
                      sendinvitation_Button('assets/Telegram.svg',"Telegram`"),
                      SizedBox(width: 10,),
                      sendinvitation_Button('assets/Facebook2.svg',"Facebook"),
                      SizedBox(width: 10,),
                      sendinvitation_Button('assets/more.svg',"More"),
                      SizedBox(width: 10,),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text('Contacts',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                      Expanded(child: Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(onPressed: () {  },
                        child: Text('View all',style: TextStyle(fontSize: 15,color: Color(0xff132183),fontWeight: FontWeight.w500),)),
                      ))
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: contacts.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            InvitationContact_Widget(contacts[index]),
                            Divider(thickness: 2,)
                          ],
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}