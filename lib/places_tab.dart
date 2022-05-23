import 'package:flutter/material.dart';
import 'place_widget.dart';

class PlacesTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Keme",style: Theme.of(context).textTheme.subtitle1,)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                PlaceWidget("Pyramids", "Giza", "assets/images/Pyramids.jpg"),
              ],
            ),
            Row(
              children: [
                PlaceWidget("Abu Simbel", "Upper Egypt, Aswan", "assets/images/Abu Simble.jpg"),
              ],
            ),
            Row(
              children: [
                PlaceWidget("Karnak Temple", "Upper Egypt, Luxor", "assets/images/Karnak Temple.jpg"),
              ],
            ),
            Row(
              children: [
                PlaceWidget("Hatshepsut Temple", "Upper Egypt, Kings Valley Rd", "assets/images/Hatshepsut Temple.jpg"),
              ],
            ),
            Row(
              children: [
                PlaceWidget("The Baron Palace", "Cairo", "assets/images/The Baron Palace.jpg"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
