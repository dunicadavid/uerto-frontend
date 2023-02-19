// File created by
// Dunica David-Gabriel <FLTY>
// on 24/12/2022 19:40:38

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uerto/actions/index.dart';
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
          actions: [
            IconButton(
              icon: const Icon(Icons.local_attraction),
              onPressed: () {
                setState(() {
                  StoreProvider.of<AppState>(context).dispatch(GetPlaceActivities(place.idplace, (_){}));
                });
              },
            ),
          ],
        ),
        body: StoreProvider.of<AppState>(context).state.placeActivities!.isNotEmpty ?
          ListView.builder(
            itemCount: StoreProvider.of<AppState>(context).state.placeActivities!.toList().length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  StoreProvider.of<AppState>(context).dispatch(GetPlaceActivityAvailability(StoreProvider.of<AppState>(context).state.placeActivities!.toList()[index].idactivity, '2022-09-06', 3, (_){}));
                },
                child: Container(
                  height: 50,
                  color: index.isEven ? Colors.grey : Colors.white,
                  child: Center(child: Text(StoreProvider.of<AppState>(context).state.placeActivities!.toList()[index].name)),
                ),
              );
            },
          ) :
          const Center(child: Icon(Icons.hourglass_empty_outlined)),
      );
    });
  }
}
