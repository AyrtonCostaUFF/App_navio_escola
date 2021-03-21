import 'package:flutter/material.dart';
import 'process.dart';
import 'uteis.dart';
import 'resources/strings.dart';


class Place extends StatefulWidget {
  @override
  _PlaceState createState() => _PlaceState();
}


class _PlaceState extends State<Place> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: Text(
            Strings.title_place,
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          ),
        ),

        body: Align(
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Botao(titleButton: Strings.place_button, screen: Process()),
                ],
              ),
            ),
          ),
        ),

      ),
    );
  }
}
