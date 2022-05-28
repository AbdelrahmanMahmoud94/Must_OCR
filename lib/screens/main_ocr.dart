import 'package:flutter/material.dart';
import 'package:keme/screens/text_recognition_widget.dart';

class MainOcr extends StatefulWidget {

  MainOcr({Key? key}) : super(key: key);
    static String routeName = 'OcrTab';


  @override
  State<MainOcr> createState() => _MainOcrState();
}

class _MainOcrState extends State<MainOcr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/back.jpg',
                  ),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const SizedBox(height: 25),
                TextRecognitionWidget(),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      );
    
  }
}