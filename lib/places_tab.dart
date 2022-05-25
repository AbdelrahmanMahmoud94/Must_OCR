import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: ()async{
          const number = '0225315454'; //set the number here
          bool? res = await FlutterPhoneDirectCaller.callNumber(number);
        },
        backgroundColor: Colors.orangeAccent,
        label: const Text('Tourist Police'),
        icon: const Icon(Icons.call),
      ),
    );
  }
}
