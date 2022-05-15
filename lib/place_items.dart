import 'package:flutter/material.dart';

class PlaceItem extends StatelessWidget {
String text;
PlaceItem(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Center(
        child: Text(text,style: Theme.of(context).textTheme.headline3,),
      ),
    );
  }
}
