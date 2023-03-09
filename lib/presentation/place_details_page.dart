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
  int _clickedIndex = -1;   // indexul activitatii selectate de user
  int _partySize = 1;   // party size ales de user
  String _chosenDate = '';    // data aleasa in format db
  bool _isDateChosen = false;   // utilizat pentru null check safty atunci cand apare lista de date pe UI

  void _onResultGetPlaceActivityAvailability(AppAction action) {
    if (action is ErrorAction) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${action.error}')));
    } else {
      setState(() {
        _isDateChosen = true;
      });
    }
  }

  void _onResultCreateReservation(AppAction action) {
    if (action is ErrorAction) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${action.error}')));
    } else {
      Navigator.of(context).pushReplacementNamed('/main');
    }
  }

  void _showDatePicker(int index) {
    showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime.now(), lastDate: DateTime(2024))
        .then((DateTime? value) {
          final String day = value!.day < 10 ? '0${value.day}' : value.day.toString();
          final String month = value.month < 10 ? '0${value.month}' : value.month.toString();
      _chosenDate = '${value.year}-$month-$day';

      setState(() {
        StoreProvider.of<AppState>(context).dispatch(
          GetPlaceActivityAvailability(
            StoreProvider.of<AppState>(context).state.placeActivities!.toList()[index].idactivity,
            _chosenDate,
            _partySize,
            _onResultGetPlaceActivityAvailability,
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
              if (place.favourite == 1) const Icon(
                Icons.star
              ) else const Icon(Icons.star_border),
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
                    StoreProvider.of<AppState>(context).dispatch(GetPlaceActivities(place.idplace, (_){}));
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
                          if (_clickedIndex == index && _isDateChosen == true)
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
                                            .toList()[indexRow]
                                            .hour,
                                        _partySize,
                                        _onResultCreateReservation,
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
