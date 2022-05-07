import 'dart:ui';

import 'package:flutter/material.dart';

class PlaceWidget extends StatelessWidget {
  String title;
  String Location;
  String ImagePath;

  PlaceWidget(this.title, this.Location, this.ImagePath);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [

        Container(
padding: EdgeInsets.all(5),
          alignment: Alignment.center,
          child:ClipRRect(
            borderRadius: BorderRadius.circular(25),
        child:Image.asset(
            ImagePath,  width: 500,
            height: 300,
            fit:BoxFit.fill
        ),
        ),
        ),
          Row(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.all(8),
                color: Colors.orangeAccent,
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                child: Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
         // Row(
         //    children: [
         //      Container(
         //        alignment: Alignment.bottomRight,
         //        margin: EdgeInsets.all(8),
         //        color: Colors.orangeAccent,
         //        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
         //        child: Text(
         //          Location,
         //          style: TextStyle(color: Colors.white, fontSize: 16,),textDirection: TextDirection.rtl,
         //        ),
         //      ),
         //    ],
         //  )
        ],
      ),
    );
  }
}
