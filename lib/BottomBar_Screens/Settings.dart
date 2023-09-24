import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paytonfc/Settings/ChangePassword.dart';
import 'package:paytonfc/Settings/TransactionLimit.dart';

import '../Settings/DeleteAccount.dart';

class Settings extends StatefulWidget {
  Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  void _showDeleteAccountAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return DeleteAccount_Alert(context);
      },
    );
  }
  final List<String> texts = [
    'Change password',
    'My card',
    'Transaction limit',
    'Notification On / Off',
    'Delete account'
  ];

  final List<String> icons = [
    'assets/lock.svg',
    'assets/card.svg',
    'assets/Exchange.svg',
    'assets/Notification.svg',
    'assets/delete.svg',
  ];
  bool isSwitched1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
                  },
                  icon: Icon(CupertinoIcons.arrow_left)),
              Text(
                'Settings',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
                width: 40,
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/profilepic.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'John Mike',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '+41 123 456 789',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'example@gmail.com',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          Flexible(
            child: ListView.builder(
              itemCount: texts.length,
              // Set the number of items in the list, including the divider
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  // The first item is the "Home" ListTile
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Divider(
                          color: Colors.grey.withOpacity(0.5),
                          // Customize the divider color and opacity
                          thickness: 1, // Adjust thickness as needed
                        ),
                      ),
                      ListTile(
                        leading: SvgPicture.asset(
                          icons[index],
                          height: 20,
                          width: 20,
                        ),
                        title: Text(texts[index]),
                        onTap: () {
                          if(index==0){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChangePassword()),

                            );
                          }
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Divider(
                          color: Colors.grey.withOpacity(0.5),
                          // Customize the divider color and opacity
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
                        leading: SvgPicture.asset(
                          icons[index],
                          height: 25,
                          width: 25,
                        ),
                        title: Text(texts[index]),
                        trailing: texts[index] == 'Notification On / Off'
                            ? Switch(
                                value: isSwitched1,
                                activeColor: Color(0xff10B23F),
                                inactiveTrackColor: Colors.grey,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched1 = !isSwitched1;
                                  });
                                })
                            : SizedBox(),
                        onTap: () {
                          if(index==2){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TransactionLimit()),

                            );


                          }
                          if(texts[index]=='Delete account'){
                            _showDeleteAccountAlert(context);
                            print('object');


                          }


                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Divider(
                          color: Colors.grey.withOpacity(0.5),
                          // Customize the divider color and opacity
                          thickness: 1, // Adjust thickness as needed
                        ),
                      ),
                      if (texts[index] == 'Log out')
                        SizedBox(
                          height: 60,
                        )
                    ],
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
