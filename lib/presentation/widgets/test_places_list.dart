import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../../actions/index.dart';
import '../../containers/places_short_container.dart';
import '../../models/index.dart';

class TestPlacesList extends StatefulWidget {
  const TestPlacesList({
    Key? key,
    required this.controller,
    required this.onResultDetails,
  })  : assert(controller != null),
        assert(onResultDetails != null),
        super(key: key);

  final ScrollController controller;
  final Function(AppAction) onResultDetails;

  @override
  State<TestPlacesList> createState() => _TestPlacesListState();
}

class _TestPlacesListState extends State<TestPlacesList> {
  @override
  Widget build(BuildContext context) {
    return PlacesShortContainer(
      builder: (BuildContext context, List<PlaceShort> places) {
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 2,
          ),
          controller: widget.controller,
          itemCount: places.length,
          physics: const AlwaysScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            final PlaceShort place = places[index];

            return GestureDetector(
              onTap: () {
                if(StoreProvider.of<AppState>(context).state.placeDetails != null) {
                  if (place.idplace != StoreProvider.of<AppState>(context).state.placeDetails?.idplace) {
                    StoreProvider.of<AppState>(context).dispatch(const DeletePlaceActivities());
                    StoreProvider.of<AppState>(context).dispatch(GetPlaceDetails(place.idplace, StoreProvider.of<AppState>(context).state.user!.userId, widget.onResultDetails));
                  } else {
                    Navigator.of(context).pushReplacementNamed('/placeDetails');
                  }
                } else {
                  StoreProvider.of<AppState>(context).dispatch(const DeletePlaceActivities());
                  StoreProvider.of<AppState>(context).dispatch(GetPlaceDetails(place.idplace, StoreProvider.of<AppState>(context).state.user!.userId, widget.onResultDetails));
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
    );
  }
}
