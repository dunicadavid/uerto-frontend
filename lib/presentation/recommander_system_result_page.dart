// File created by
// Dunica David-Gabriel <FLTY>
// on 09/04/2023 12:05:21

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../actions/index.dart';
import '../containers/recommended_places_short_container.dart';
import '../models/index.dart';

class RecommanderSystemResultPage extends StatefulWidget {
  const RecommanderSystemResultPage({Key? key}) : super(key: key);

  @override
  _RecommanderSystemResultPageState createState() => _RecommanderSystemResultPageState();
}

class _RecommanderSystemResultPageState extends State<RecommanderSystemResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recommendations'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            if(StoreProvider.of<AppState>(context).state.user!.nextStrategy == 1) {
              StoreProvider.of<AppState>(context).dispatch(const SetRecommenderStrategy(3));
            } else if(StoreProvider.of<AppState>(context).state.user!.nextStrategy == 3 || StoreProvider.of<AppState>(context).state.user!.nextStrategy == 2) {
              StoreProvider.of<AppState>(context).dispatch(const SetRecommenderStrategy(1));
            }
            Navigator.of(context).pushReplacementNamed('/recommend');
          },
        ),
      ),
      body: RecommendedPlacesShortContainer(
        builder: (BuildContext context, List<PlaceShort> places) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 2,
            ),
            itemCount: places.length,
            physics: const AlwaysScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              final PlaceShort place = places[index];

              return GestureDetector(
                onTap: () {
                  if (StoreProvider.of<AppState>(context).state.placeDetails != null) {
                    if (place.idplace != StoreProvider.of<AppState>(context).state.placeDetails?.idplace) {
                      StoreProvider.of<AppState>(context).dispatch(const DeletePlaceActivities());
                      StoreProvider.of<AppState>(context).dispatch(GetPlaceDetails(
                          place.idplace, StoreProvider.of<AppState>(context).state.user!.userId, (_) {}));
                    } else {
                      Navigator.of(context).pushReplacementNamed('/placeDetails');
                    }
                  } else {
                    StoreProvider.of<AppState>(context).dispatch(const DeletePlaceActivities());
                    StoreProvider.of<AppState>(context).dispatch(
                        GetPlaceDetails(place.idplace, StoreProvider.of<AppState>(context).state.user!.userId, (_) {}));
                  }
                },
                child: GridTile(
                  footer: GridTileBar(
                    backgroundColor: Colors.black38,
                    title: Text(place.name),
                    subtitle: Text(place.location),
                  ),
                  child: Image.network(
                    'https://img.toolstud.io/166x240/3b5998/fff&text=+A/R:0.69+',
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
