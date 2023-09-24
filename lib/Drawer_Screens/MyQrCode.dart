import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyQrCode extends StatelessWidget {
  const MyQrCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
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
                    },
                    icon: Icon(CupertinoIcons.arrow_left)),
                Text(
                  'My QR Code',
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
              child: Stack(
                children: [
                  Container(
                    width: 110,
                    height: 110,
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
                      width: 30,
                      height: 30,
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
            SizedBox(height: 10,),
            Text('John Mike',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text('Verify User',style: TextStyle(fontSize: 15,color: Color(0xff132183),fontWeight: FontWeight.w500),),
            SizedBox(height: MediaQuery.of(context).size.height*0.05,),
            Image.asset('assets/qrcode2.png',),
            Spacer(),
            Align(

             alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xff26368E),
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Scan QR Code",
                        style: TextStyle(
                          color: Color(0xff26368E),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40,)



          ],
        ),
      ),
    );
  }
}
