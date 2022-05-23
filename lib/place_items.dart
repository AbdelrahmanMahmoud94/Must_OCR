import 'package:flutter/material.dart';
import 'package:keme/place_360_degree.dart';

class PlaceItem extends StatelessWidget {
  String text;

  PlaceItem(this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          child: Center(
            child: Text(
              text,
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(25),
          child: ElevatedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, Place360Degree.routeName);
            },
            icon: Icon(
              Icons.photo,
            ),
            label: Text("Show in vr mode"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
            ),
          ),
        ),
      ],
    );
  }
}
