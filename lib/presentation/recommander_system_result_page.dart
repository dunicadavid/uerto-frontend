// File created by
// Dunica David-Gabriel <FLTY>
// on 09/04/2023 12:05:21

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uerto/presentation/widgets/test_appbar.dart';
import 'package:uerto/presentation/widgets/test_hexagon_shape.dart';

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
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: RecommendedPlacesShortContainer(
        builder: (BuildContext context, List<PlaceShort> places) {
          return Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: GridView.builder(padding: const EdgeInsets.only(top: 20),
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
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(13)),
                        child: Container(
                          padding: const EdgeInsets.only(bottom: 15, left: 12, right: 12),
                          child: GridTile(
                            footer: GridTileBar(
                              backgroundColor: Colors.black38,
                              title: Text(place.name),
                              subtitle: Text(place.location),
                            ),
                            child: Image.network(
                              'https://10.0.2.2:3000/images/places/${place.imageFirst}',
                              fit: BoxFit.cover,
                              color: Colors.black.withOpacity(0.2), // Semi-transparent black color
                              colorBlendMode: BlendMode.darken,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              AppBarUerto(
                colorFill: Theme.of(context).highlightColor,
                width: width,
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.only(top:20,left: 280),
                child: HexagonalShape(
                    size: 120,
                    colorFill: Theme.of(context).secondaryHeaderColor.withOpacity(0.03),
                    colorStroke: Colors.transparent,
                    angle: 0.20943951,
                    strokeWidth: 0),
              ),
              Padding(
                padding: const EdgeInsets.only(top:90,left: 280),
                child: HexagonalShape(
                    size: 50,
                    colorFill: Theme.of(context).secondaryHeaderColor.withOpacity(0.07),
                    colorStroke: Colors.transparent,
                    angle: -0.523598776,
                    strokeWidth: 0),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: SizedBox(
                    height: 45,
                    width: width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            CupertinoIcons.back,
                            color: Theme.of(context).primaryColorDark,
                            size: 30,
                          ),
                          onPressed: () {
                            if(StoreProvider.of<AppState>(context).state.user!.nextStrategy == 1) {
                              StoreProvider.of<AppState>(context).dispatch(const SetRecommenderStrategy(3));
                            } else if(StoreProvider.of<AppState>(context).state.user!.nextStrategy == 3 || StoreProvider.of<AppState>(context).state.user!.nextStrategy == 2) {
                              StoreProvider.of<AppState>(context).dispatch(const SetRecommenderStrategy(1));
                            }
                            Navigator.of(context).pushReplacementNamed('/recommend');
                          },
                        ),
                        Text(
                          'Recommendations',
                          style: TextStyle(
                            color: Theme.of(context).secondaryHeaderColor,
                            fontSize: 22,
                            fontFamily: 'Plus',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.more_vert,
                            color: Theme.of(context).primaryColorDark,
                            size: 30,
                          ),
                          onPressed: () {
                            ///muta l de aici
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
