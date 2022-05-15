import 'package:flutter/material.dart';
import 'package:keme/my_theme.dart';
import 'package:keme/place_details.dart';
import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Keme",
      routes: {
        HomeScreen.routeName: (buildContext) => HomeScreen(),
        PlaceDetails.routeName: (buildContext) => PlaceDetails()},
      initialRoute: HomeScreen.routeName,
      theme: MyThemeData.DarkTheme,
    );
  }
}
