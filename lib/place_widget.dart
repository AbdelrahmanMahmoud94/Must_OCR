import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:keme/place_details.dart';

class PlaceWidget extends StatelessWidget {
  String Place;
  String Location;
  String ImagePath;

  PlaceWidget(this.Place, this.Location, this.ImagePath);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, PlaceDetails.routeName,
              arguments: PlaceDetailsArgs(placeName: Place),);
            },
            child: Container(
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(ImagePath,
                    width: 500, height: 300, fit: BoxFit.fill),
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 0,
            child: Container(
              margin: EdgeInsets.all(8),
              color: Color.fromRGBO(227, 138, 51, 0.5019607843137255),
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
              child: Text(
                Place,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
          Positioned(
            // The Positioned widget is used to position the text inside the Stack widget
            bottom: 0,
            left: 0,
            child: Container(
                margin: EdgeInsets.all(8),
                color: Color.fromRGBO(227, 138, 51, 0.5019607843137255),
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                child: RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(
                          Icons.location_on,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      TextSpan(text: Location),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
