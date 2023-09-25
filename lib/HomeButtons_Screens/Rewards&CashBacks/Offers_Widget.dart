import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Offers_info.dart';


  Widget Offers_Widget(Offers_info offer) {
    return Container(
      height: 80,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage(offer.image),fit: BoxFit.cover)
            ),

          ),
          SizedBox(width: 5,),
          Column(
            children: [
              SizedBox(height: 15,),
              Text(offer.name,style: TextStyle(fontSize: 15,),),
              Text("${offer.off_offer} Cashback",style: TextStyle(fontSize: 15),),
              Text("     Min spend: ${offer.spend} ",style: TextStyle(fontSize: 13,color: Colors.grey),),


            ],
          ),
          Expanded(child: Align(
            alignment: Alignment.centerRight,
            child: IconButton(onPressed: (){},icon: SvgPicture.asset('assets/add_offer.svg',height: 15,width: 15,),),))
        ],
      ),
    );
  }

