import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {

  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Keme",
      routes: {HomeScreen.routeName: (buildContext)=>HomeScreen()},
      initialRoute: HomeScreen.routeName,
    );
  }
}