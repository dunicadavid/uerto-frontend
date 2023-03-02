// File created by
// Dunica David-Gabriel <FLTY>
// on 24/12/2022 19:40:38

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uerto/actions/index.dart';
import 'package:uerto/containers/place_container.dart';
import 'package:uerto/containers/user_container.dart';
import 'package:uerto/models/index.dart';

class PlaceDetailsPage extends StatefulWidget {
  const PlaceDetailsPage({Key? key}) : super(key: key);

  @override
  State<PlaceDetailsPage> createState() => _PlaceDetailsPageState();
}

class _PlaceDetailsPageState extends State<PlaceDetailsPage> {
  int _clickedIndex = -1;
  int _partySize = 1;
  String _chosenDate = '';

  void _showDatePicker(int index) {
    showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime.now(), lastDate: DateTime(2024))
        .then((DateTime? value) {
      _chosenDate = '${value?.year}-${value?.month}-${value?.day}';

      setState(() {
        StoreProvider.of<AppState>(context).dispatch(
          GetPlaceActivityAvailability(
            StoreProvider.of<AppState>(context).state.placeActivities!.toList()[index].idactivity,
            _chosenDate,
            _partySize,
            (_) {},
          ),
        );
        _clickedIndex = index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return PlaceContainer(builder: (BuildContext context, Place? place) {
      return UserContainer(builder: (BuildContext context, AppUser? user) {
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
                icon: const Icon(Icons.remove),
                onPressed: () {
                  setState(() {
                    if (_partySize > 1) {
                      _partySize--;
                    }
                  });
                },
              ),
              Center(
                  child: Text(
                _partySize.toString(),
                style: const TextStyle(fontSize: 20),
              )),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    _partySize++;
                  });
                },
              ),
              IconButton(
                icon: const Icon(Icons.local_attraction),
                onPressed: () {
                  setState(() {
                    StoreProvider.of<AppState>(context).dispatch(GetPlaceActivities(place.idplace, (_) {}));
                  });
                },
              ),
            ],
          ),
          body: StoreProvider.of<AppState>(context).state.placeActivities!.isNotEmpty
              ? ListView.builder(
                  itemCount: StoreProvider.of<AppState>(context).state.placeActivities!.toList().length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        _showDatePicker(index);
                      },
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 50,
                            color: index.isEven ? Colors.grey : Colors.white,
                            child: Center(
                                child: Text(
                                    StoreProvider.of<AppState>(context).state.placeActivities!.toList()[index].name)),
                          ),
                          if (_clickedIndex == index)
                            Container(
                              height: 30,
                              color: index.isEven ? Colors.grey : Colors.white,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                physics: const BouncingScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: StoreProvider.of<AppState>(context)
                                    .state
                                    .placeActivityAvailability!
                                    .toList()
                                    .length,
                                itemBuilder: (BuildContext context, int indexRow) {
                                  return GestureDetector(
                                    onTap: () {
                                      StoreProvider.of<AppState>(context).dispatch(CreateReservation(
                                        place.idplace,
                                        StoreProvider.of<AppState>(context)
                                            .state
                                            .placeActivities!
                                            .toList()[index]
                                            .idactivity,
                                        StoreProvider.of<AppState>(context)
                                            .state
                                            .placeActivityAvailability!
                                            .toList()[indexRow]
                                            .idactivitySeating,
                                        user!.userId,
                                        _chosenDate,
                                        StoreProvider.of<AppState>(context)
                                            .state
                                            .placeActivityAvailability!
                                            .toList()[index]
                                            .hour,
                                        _partySize,
                                        (_) {},
                                      ));
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(horizontal: 5),
                                      height: 30,
                                      width: 60,
                                      color: Colors.amber,
                                      child: FittedBox(
                                        child: Text(StoreProvider.of<AppState>(context)
                                            .state
                                            .placeActivityAvailability!
                                            .toList()[indexRow]
                                            .hour),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            )
                          else
                            Container(),
                        ],
                      ),
                    );
                  },
                )
              : const Center(child: Icon(Icons.hourglass_empty_outlined)),
        );
      });
    });
  }
}
