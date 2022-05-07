import 'package:flutter/material.dart';
import 'place_widget.dart';

class PlacesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Keme",style: TextStyle(color: Colors.black)),backgroundColor: Colors.transparent,elevation: 0,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                PlaceWidget("Pyramids", "Giza", "assets/images/resize.jpg"),
              ],
            ),
            Row(
              children: [
                PlaceWidget("ABU SIMBEL", "Upper Egypt, Aswan", "assets/images/148207.jpg"),
              ],
            ),
            Row(
              children: [
                PlaceWidget("Karnak Temple", "Upper Egypt, Luxor", "assets/images/معبد-الكرنك-3jpg.jpg"),
              ],
            ),
            Row(
              children: [
                PlaceWidget("Hatshepsut Temple", "Upper Egypt, Kings Valley Rd", "assets/images/download.jpg"),
              ],
            ),
            Row(
              children: [
                PlaceWidget("The Hindu Palace", "Cairo", "assets/images/800px-The_exterior_of_the_Baron_Empain_palace.jpg"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
