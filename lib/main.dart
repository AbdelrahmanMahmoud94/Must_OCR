import 'package:flutter/material.dart';
import 'package:keme/filter_tab.dart';
import 'package:keme/my_theme.dart';
import 'package:keme/place_details.dart';
import 'ar_tour_tab.dart';
import 'home_screen.dart';
import 'ocr_tab.dart';

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
        PlaceDetails.routeName: (buildContext) => PlaceDetails(),
        FilterTab.routeName: (buildContext) => FilterTab(),
        OcrTab.routeName: (buildContext) => OcrTab(),
        ArTourTab.routeName: (buildContext) => ArTourTab(),
      },

      initialRoute: HomeScreen.routeName,
      theme: MyThemeData.DarkTheme,
    );
  }
}
