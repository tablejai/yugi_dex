import "package:flutter/material.dart";
import "package:firebase_cached_image/firebase_cached_image.dart";

class CardViewPage extends StatefulWidget {
  // final Card cardToDisplay;
  const CardViewPage({super.key});

  @override
  State<CardViewPage> createState() => _CardViewPageState();
}

class _CardViewPageState extends State<CardViewPage> {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData =
        ThemeData(useMaterial3: true, brightness: Brightness.light);
    return MaterialApp(
        theme: themeData,
        home: Scaffold(
            appBar: AppBar(
                leading: BackButton(
                  color: Colors.black,
                  onPressed: () => Navigator.pop(context),
                ),
                centerTitle: true),
            body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // The Card Image
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 5.0, color: Colors.orangeAccent),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: Image(
                                    image: FirebaseImageProvider(FirebaseUrl(
                                        "gs://yugidex-7169d.appspot.com/cards/yugioh/BlueEyesWhiteDragon.jpg")))))
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[Text("Blue Eyes White Dragon")])
                ])));
  }
}
