import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:keme/screens/signin_screen.dart';

class SettingTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
            MaterialStateProperty.all(Colors.orangeAccent),
          ),
          child: Text("Logout"),
          onPressed: () {
            FirebaseAuth.instance.signOut().then((value) {
              print("Signed Out");
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignInScreen()));
            });
          },
        ),
      ),
    );
  }
}
