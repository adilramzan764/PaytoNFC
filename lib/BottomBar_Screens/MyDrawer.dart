import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paytonfc/Drawer_Screens/AboutUs.dart';
import 'package:paytonfc/Drawer_Screens/MyProfile.dart';
import 'package:paytonfc/Drawer_Screens/NFC.dart';

class CustomDrawer extends StatelessWidget {

  final List<String> drawerItems = ['Home', 'My profile', 'My QR code', 'NFC','Payment History', 'Privacy policy', 'About us', 'Contact us','Support / FAQ’s','Log out'];
  final List<String> icons = ['assets/home.svg', 'assets/profile.svg', 'assets/Qr Code2.svg', 'assets/nfc2.svg','assets/Refresh.svg', 'assets/change-password.svg', 'assets/about-us.svg', 'assets/icon_massage .svg','assets/support.svg','assets/logout.svg'];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(height: 60,),
          Align
            (
            alignment: Alignment.centerRight,
            child: IconButton(onPressed: (){
              Navigator.pop(context);
            },icon: SvgPicture.asset('assets/cancel.svg'),iconSize: 70,),),


          Flexible(
            child: ListView.builder(
              itemCount: drawerItems.length, // Set the number of items in the list, including the divider
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  // The first item is the "Home" ListTile
                  return  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Divider(
                          color: Colors.grey.withOpacity(0.5), // Customize the divider color and opacity
                          thickness: 1, // Adjust thickness as needed
                        ),
                      ),
                      ListTile(
                        leading: SvgPicture.asset(icons[index],height: 20,width: 20,),
                        title: Text(drawerItems[index]),
                        trailing: Icon(CupertinoIcons.right_chevron),
                        onTap: () {
                          // Handle the Home item tap
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Divider(
                          color: Colors.grey.withOpacity(0.5), // Customize the divider color and opacity
                          thickness: 1, // Adjust thickness as needed
                        ),
                      ),
                    ],
                  );
                } else {
                  // The second item is the Divider
                  return Column(
                    children: [
                      ListTile(
                        leading: SvgPicture.asset(icons[index],height: 25,width: 25,),
                        title: Text(drawerItems[index]),
                        trailing: Icon(CupertinoIcons.right_chevron),
                        onTap: () {
                          if(drawerItems[index]=='My profile')
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyProfile()),
                            );
                          if(drawerItems[index]=='NFC')
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => NFC()),
                            );
                          if(drawerItems[index]=='About us')
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => AboutUs()),
                            );
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Divider(
                          color: Colors.grey.withOpacity(0.5), // Customize the divider color and opacity
                          thickness: 1, // Adjust thickness as needed
                        ),
                      ),
                      if(drawerItems[index]=='Log out')
                        SizedBox(height: 60,)

                    ],
                  );
                }
              },
            ),
          ),


          // Add more ListTile items for other menu options
        ],
      ),
    );
  }
}