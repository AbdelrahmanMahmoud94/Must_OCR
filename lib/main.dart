import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:keme/filter_tab.dart';
import 'package:keme/my_theme.dart';
import 'package:keme/place_360_degree.dart';
import 'package:keme/place_details.dart';
import 'package:keme/screens/reset_password.dart';
import 'package:keme/screens/signin_screen.dart';
import 'package:keme/screens/signup_screen.dart';
import 'ar_tour_tab.dart';
import 'home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        SignInScreen.routeName: (buildContext) => SignInScreen(),
        SignUpScreen.routeName: (buildContext) => SignUpScreen(),
        ResetPassword.routeName: (buildContext) => ResetPassword(),
        HomeScreen.routeName: (buildContext) => HomeScreen(),
        PlaceDetails.routeName: (buildContext) => PlaceDetails(),
        FilterTab.routeName: (buildContext) => FilterTab(),
        ArTourTab.routeName: (buildContext) => ArTourTab(),
        Place360Degree.routeName: (buildContext) => Place360Degree(),
      },
      initialRoute: SignInScreen.routeName,
      theme: MyThemeData.DarkTheme,
    );
  }
}
