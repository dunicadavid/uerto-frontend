// File created by
// Dunica David-Gabriel <FLTY>
// on 10/03/2023 16:15:22

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uerto/actions/index.dart';
import 'package:uerto/containers/places_searched_short_container.dart';

import '../containers/user_container.dart';
import '../models/index.dart';

class SearchPlacePage extends StatefulWidget {
  const SearchPlacePage({Key? key}) : super(key: key);

  @override
  _SearchPlacePageState createState() => _SearchPlacePageState();
}

class _SearchPlacePageState extends State<SearchPlacePage> {
  Timer? timer;
  bool hasChanged = false;
  String nameToSearch = '';

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(milliseconds: 100), (_) => getSearchedPlaces());
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  Future<void> getSearchedPlaces() async {
    if (hasChanged) {
      hasChanged = false;
      setState(() {
        StoreProvider.of<AppState>(context).dispatch(const DeletePlacesSearched());
        if (nameToSearch != '' && nameToSearch != ' ') {
          StoreProvider.of<AppState>(context).dispatch(GetPlacesSearched(nameToSearch, 5, (_) {}));
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return UserContainer(builder: (BuildContext context, AppUser? user) {
      return PlacesSearchedShortContainer(
        builder: (BuildContext context, List<PlaceShort>? placesSearched) {
          return Scaffold(
            backgroundColor: const Color(0xffF0F0F0),
            appBar: AppBar(
              elevation: 0,
              backgroundColor: const Color(0xff262f4c),
              leading: GestureDetector(
                  onTap: () {
                    timer?.cancel();
                    StoreProvider.of<AppState>(context).dispatch(const DeletePlacesSearched());
                    Navigator.of(context).pushReplacementNamed('/main');
                  },
                  child: const Icon(
                    CupertinoIcons.back,
                    color: Color(0xff12FCB2),
                  )),
              title: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: const Color(0x24000000),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    //textAlignVertical: TextAlignVertical.top,
                    cursorColor: const Color(0xff12FCB2),
                    style: const TextStyle(color: Color(0xffF0F0F0), fontWeight: FontWeight.bold),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      hintText: 'search',
                      hintStyle: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 13),
                    ),
                    onChanged: (String value) {
                      if(value != ' ') {
                        ///de revizuit aici 'str plin de spatii'
                        nameToSearch = value;
                        hasChanged = true;
                      }
                    },
                  ),
                ),
              ),
            ),
            body: placesSearched != null
                ? ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: placesSearched.length,
                    itemBuilder: (BuildContext context, int index) {
                      final PlaceShort place = placesSearched[index];

                      return ListTile(
                        onTap: () {
                          timer?.cancel();
                          //StoreProvider.of<AppState>(context).dispatch(SearchChoose(user));
                          //Navigator.pushReplacementNamed(context, '/result');
                        },
                        title: Text(
                          place.name,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(place.location),
                      );
                    },
                  )
                : const Center(
                    child: Text('There are no places with this name.'),
                  ),
          );
        },
      );
    });
  }
}
