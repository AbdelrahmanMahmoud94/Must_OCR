import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:keme/place_items.dart';

class PlaceDetails extends StatefulWidget {
  static String routeName = 'place_details';

  @override
  State<PlaceDetails> createState() => _PlaceDetailsState();
}

class _PlaceDetailsState extends State<PlaceDetails> {
  List<String> lines = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as PlaceDetailsArgs;
    if(lines.length==0)
    loadFile("${args.placeName}");
    return Scaffold(
      appBar: AppBar(
          title: Text(
        args.placeName,
        style: Theme.of(context).textTheme.subtitle1,
      )),
      body: lines.length == 0
          ? CircularProgressIndicator()
          : ListView.builder(
              itemBuilder: (_, index) {
                return PlaceItem(lines[index]);
              },
              itemCount: lines.length,
            ),
    );
  }

  void loadFile(String fileName) async {
    String fileContent =
        await rootBundle.loadString("assets/files/$fileName.txt");
    List<String> lines = fileContent.split("\n");
    this.lines = lines;
    setState(() {

    });
    print(lines);
  }
}

class PlaceDetailsArgs {
  String placeName;
  PlaceDetailsArgs({required this.placeName});
}
