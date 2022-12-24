// File created by
// Dunica David-Gabriel <FLTY>
// on 24/12/2022 19:40:38

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uerto/containers/place_container.dart';
import 'package:uerto/models/index.dart';

class PlaceDetailsPage extends StatefulWidget {
  const PlaceDetailsPage({Key? key}) : super(key: key);

  @override
  State<PlaceDetailsPage> createState() => _PlaceDetailsPageState();
}

class _PlaceDetailsPageState extends State<PlaceDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return PlaceContainer(builder: (BuildContext context, Place? place) {
      return Scaffold(
        appBar: AppBar(
          title: Text(place!.name),
          leading: IconButton(
            icon: const Icon(Icons.backspace_outlined),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/placeResult');
            },
          ),
        ),
        body: Column(
          children: <Widget>[

          ],
        ),
      );
    });
  }
}
