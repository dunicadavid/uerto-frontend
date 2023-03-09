// File created by
// Dunica David-Gabriel <FLTY>
// on 09/03/2023 11:44:22

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uerto/actions/index.dart';

import '../containers/place_filters_container.dart';
import '../models/index.dart';

class PlaceCategoryDetailedFilterPage extends StatefulWidget {
  const PlaceCategoryDetailedFilterPage({Key? key}) : super(key: key);

  @override
  State<PlaceCategoryDetailedFilterPage> createState() => _PlaceCategoryDetailedFilterPageState();
}

class _PlaceCategoryDetailedFilterPageState extends State<PlaceCategoryDetailedFilterPage> {

  final List<String> _filters = <String>[
    'Asian',
    'Vegan',
    'Meat',
    'Outside',
    'Smoke',
    'Italian',
    'Fish',
    'Fancy',
    'Live',
    'Games',
    'Work',
    'Music',
    'Greek',
    'Inside'
  ];

  @override
  Widget build(BuildContext context) {
    return PlaceFiltersContainer(
      builder: (BuildContext context, List<String>? selectedFilters) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Filters'),
            leading: IconButton(
              icon: const Icon(Icons.backspace_outlined),
              onPressed: () {
                StoreProvider.of<AppState>(context).dispatch(const DeletePlacesFilters());
                Navigator.of(context).pushReplacementNamed('/placeFilter');
              },
            ),
            centerTitle: true,
            backgroundColor: Colors.green[700],
          ),
          body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: _filters.length,
                    itemBuilder: (BuildContext context, int index) {
                      return FilterItem(_filters[index], index);
                    },
                  ),
                ),
                if (selectedFilters!.isNotEmpty) Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 10,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/placeFilter');
                      },
                      child: Container(
                        height: 55,
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                            color: Colors.green[700],
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(
                          child: Text(
                            'Select (${selectedFilters.length})',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ) else
                  Container(),
              ],
            ),
          ),
        );
      },
    );
  }


  Widget FilterItem(String name, int index) {
    return PlaceFiltersContainer(
      builder: (BuildContext context, List<String>? selectedFilters) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.green[700],
            child: const Icon(
              Icons.fastfood,
              color: Colors.white,
            ),
          ),
          title: Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          trailing: selectedFilters!.contains(_filters[index])
              ? Icon(
            Icons.check_circle,
            color: Colors.green[700],
          )
              : const Icon(
            Icons.check_circle_outline,
            color: Colors.grey,
          ),
          onTap: () {
            setState(
                  () {
                if (selectedFilters.contains(_filters[index])) {
                  StoreProvider.of<AppState>(context).dispatch(RemovePlacesFilters(_filters[index]));
                } else {
                  StoreProvider.of<AppState>(context).dispatch(SetPlacesFilters(_filters[index]));
                }
              },
            );
          },
        );
      },
    );
  }
}